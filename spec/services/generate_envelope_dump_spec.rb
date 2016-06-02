require 'generate_envelope_dump'
require 'envelope_transaction'

describe GenerateEnvelopeDump, type: :service do
  TODAY = DateTime.current.utc.to_date
  FILE_NAME = "tmp/dumps/dump-#{TODAY}.json".freeze

  describe '#run' do
    let(:generate_envelope_dump) do
      GenerateEnvelopeDump.new(TODAY)
    end

    before(:example) do
      create(:envelope)
      create(:envelope, :deleted)
    end

    after(:context) do
      File.unlink(FILE_NAME)
    end

    it 'creates a dump file with the dumped envelopes' do
      generate_envelope_dump.run

      expect(File.exist?(FILE_NAME)).to eq(true)
    end

    it 'contains dumped envelope transactions' do
      generate_envelope_dump.run
      dump = JSON.parse(File.read(FILE_NAME))

      expect(dump.size).to eq(2)
      expect(dump.last['status']).to eq('deleted')
    end

    it 'stores a new dump in the database' do
      expect do
        generate_envelope_dump.run
      end.to change { EnvelopeDump.count }.by(1)
    end

    context 'dump already exists in the database' do
      it 'rejects the dump creation' do
        generate_envelope_dump.run

        expect do
          generate_envelope_dump.run
        end.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end
end
