# frozen_string_literal: true

require_relative "lib/idi_sms/version"

Gem::Specification.new do |spec|
  ## info
  spec.name = "idi_sms"
  spec.version = IdiSms::VERSION
  spec.authors = ["idrees ibrahim"]
  spec.email = ["idrees_cs20@hotmail.com"]

  ## summary
  spec.summary = "Send Sms by using PITB apis it can be send in urdu and english both"
  spec.description = "SMS-Gateway API DETAILS For SMS API FOR DENGUE TRACKING SYSTEM NEW. Short Code 8070"
  spec.homepage = "https://rubygems.org/gems/idi_sms"  
  spec.required_ruby_version = ">= 2.6.0"

  ## meta information
  spec.metadata["allowed_push_host"] = "https://rubygems.org/gems/idi_sms"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/idreesibrahim/idi_sms"
  spec.metadata["changelog_uri"] = "https://github.com/idreesibrahim/idi_sms/blob/main/CHANGELOG.md" 
  
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.license       = "Nonstandard"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
