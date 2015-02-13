module Referrari
  class Engine < ::Rails::Engine
    isolate_namespace Referrari

    config.to_prepare do
      User.class_eval do
        has_many :referrals, :foreign_key => 'referrer_id', :class_name => "Referrari::Referral"
        has_many :referred_users, :through => :referrals, :source => :resource

        has_one :referral, :foreign_key => 'resource_id', :class_name => "Referrari::Referral"
        has_one :referred_by, :through => :referral, :source => :referrer

        has_many :referral_codes, :class_name => "Referrari::ReferralCode"
      end
    end

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
