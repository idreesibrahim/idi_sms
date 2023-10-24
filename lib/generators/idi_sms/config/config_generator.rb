# Create a generator at lib/generators/idi_sms/config/config_generator.rb
require 'rails/generators'

module IdiSms
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path('templates', __dir__)

      def create_config_file
        template 'idi_sms.yml', 'config/idi_sms.yml'
      end
    end
  end
end
