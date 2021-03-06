namespace :envelopes do
  desc 'Loads application environment'
  task :environment do
    require File.expand_path('../../../config/environment', __FILE__)
  end

  desc 'Creates an envelope community'
  task :create_community, [:name, :backup_item] => [:environment] do |_, args|
    comm = EnvelopeCommunity.create(name: args[:name],
                                    backup_item: args[:backup_item])
    if comm
      puts "EnvelopeCommunity #{args[:name]} created"
    else
      puts comm.errors.full_messages
    end
  end

  desc 'Clear community envelopes'
  task :clear_community, [:name] => [:environment] do |_, args|
    Envelope.in_community(args[:name]).destroy_all if args[:name].present?
  end
end
