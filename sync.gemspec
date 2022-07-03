# frozen_string_literal: true

require_relative 'lib/sync/version'

Gem::Specification.new do |spec|
  spec.name        = 'sync'
  spec.version     = Sync::VERSION
  spec.authors     = ['badbusiness']
  spec.email       = ['martijn@hovetechniek.nl']
  spec.homepage    = 'http://github.com'
  spec.summary     = 'Summary of Sync.'
  spec.description = 'Description of Sync.'
  spec.required_ruby_version = '>= 3.1.2'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  end

  spec.add_dependency 'rails', '>= 7.0.3'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
