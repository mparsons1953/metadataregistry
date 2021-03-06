## Release 0.6.5

### Highlights

- CE/registry rebrand
- Several minor fixes on json-schemas and the envelopes crud flow

## Release 0.6

### Highlights

- Search feature
([#5](https://github.com/learningtapestry/metadataregistry/issues/5))
- VM bootstrap script
([PR#38](https://github.com/learningtapestry/metadataregistry/pull/38))
- Licenses inventory
([PR#39](https://github.com/learningtapestry/metadataregistry/pull/39))
- Docs update, including swagger and samples.

## Release 0.5

### Highlights

- Add paradata schemas
([#13](https://github.com/learningtapestry/metadataregistry/issues/13))
- Create api info documentation
([#25](https://github.com/learningtapestry/metadataregistry/issues/25))

## Release 0.4

### Highlights

- Create a ROADMAP
([#30](https://github.com/learningtapestry/metadataregistry/issues/30))
- Homepage on `/` with the readme on it
([#29](https://github.com/learningtapestry/metadataregistry/issues/29))
- Fix metadata_registry property for lr 1.0 compliance
([#28](https://github.com/learningtapestry/metadataregistry/issues/28))
- Metadataregistry rebranding, improvements on readme and other docs
([#28](https://github.com/learningtapestry/metadataregistry/issues/28))

## Release 0.3

### Highlights

- Add schema definition and validation for CredentialRegistry (Organization and Credentials)
([#8](https://github.com/learningtapestry/learningregistry/issues/8))
- Walkthrough docs for CredentialRegistry
([#26](https://github.com/learningtapestry/learningregistry/issues/26))
- Use ERB templates (through the JSONSchema renderer class) to build composable json-schemas
([#22](https://github.com/learningtapestry/learningregistry/issues/22))
- Allow cred-reg and other communities to have multiple schema definitions for different resources
([#14](https://github.com/learningtapestry/learningregistry/issues/14))
- Organize communities schemas and etc on different folders, and handle lr_metadata properly.
([#23](https://github.com/learningtapestry/learningregistry/issues/23))

## Release 0.2

### Highlights

- Introduce the concept of envelope community. It acts as a top level entity and
needs to be present in every operation related to envelopes. ([#15](https://github.com/learningtapestry/learningregistry/issues/15))
- Backup & Restore dump files consisting of encoded envelopes to Internet Archive ([#6](https://github.com/learningtapestry/learningregistry/issues/6))
- Display general information when accessing root endpoints ([#18](https://github.com/learningtapestry/learningregistry/issues/18))
- Preliminary use of JSON Schema files that can perform the validations for both
resource metadata and API requests. ([#8](https://github.com/learningtapestry/learningregistry/issues/8) and [#14](https://github.com/learningtapestry/learningregistry/issues/14))
- Add compatibility with JRuby 9.1.2.0 ([#a9277b5](https://github.com/learningtapestry/learningregistry/commit/a9277b5975bb692f5b7b73bef08baafbb9dc8e2e))
- Allow deleting multiple envelopes by URL ([#5a75de](https://github.com/learningtapestry/learningregistry/commit/5a75de555b08d27fb0a5f9d9b357d0bdbc84a6e3))

## Release 0.1

First numbered release.

### Highlights

- Allow basic publishing of envelopes using JWT payloads. ([#1](https://github.com/learningtapestry/learningregistry/issues/1))
- Other simple operations, such as update, delete or list envelopes. ([#2](https://github.com/learningtapestry/learningregistry/issues/2), [#3](https://github.com/learningtapestry/learningregistry/issues/3) and [#4](https://github.com/learningtapestry/learningregistry/issues/4))
- First implementation of resource metadata constraints and validations.
