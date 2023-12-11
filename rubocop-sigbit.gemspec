# frozen_string_literal: true

require_relative 'lib/rubocop/sigbit/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop-sigbit'
  spec.version       = Rubocop::Sigbit::VERSION
  spec.authors       = ['Jacob Andersson']
  spec.email         = ['jacob@signficantbit.se']

  spec.summary       = 'Rubocop rules for Significant Bit.'
  spec.description   = 'Rubocop rules for Significant Bit.'
  spec.homepage      = 'https://github.com/significantbit/rubocop-sigbit'
  spec.required_ruby_version = '>= 3.0'

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/significantbit/rubocop-sigbit'
  spec.metadata['changelog_uri'] = 'https://github.com/significantbit/rubocop-sigbit'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'rubocop', '~> 1.0'
  spec.add_dependency 'rubocop-rails', '~> 2.0'
  spec.add_dependency 'rubocop-rspec', '~> 2.0'

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
