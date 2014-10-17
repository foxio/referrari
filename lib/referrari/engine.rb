module Referrari
  class Engine < ::Rails::Engine
    isolate_namespace Referrari

    config.to_prepare do
      User.class_eval do
        has_many :referrals, :foreign_key => 'referrer_id', :class_name => "Referrari::Referral"
        has_many :referred_users, :through => :referrals, :source => :resource

        has_one :referral, :foreign_key => 'resource_id', :class_name => "Referrari::Referral"
        has_one :referred_by, :through => :referral, :source => :referrer
      end
    end

  end
end
