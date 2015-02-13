module Referrari
  module Generators
    class ConfigGenerator < Rails::Generators::Base
      source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      desc "Copies Referrari configuration file to your application's initializer directory."

      def copy_config_file
        template 'referrari_initializer.rb', 'config/initializers/referrari.rb'
      end
    end
  end
end
