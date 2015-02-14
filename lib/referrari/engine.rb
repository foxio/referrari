module Referrari
  class Engine < ::Rails::Engine
    isolate_namespace Referrari

    config.generators do |g|
      g.test_framework      :rspec,        :fixture => false
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
    end

    initializer 'referrari.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper Referrari::ActionViewExtension
      end
    end

  end
end
