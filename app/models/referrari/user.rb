module Referrari
  module User

    def self.included(base)
      base.class_eval do

        has_many :referrals, :foreign_key => 'referrer_id', :class_name => "Referrari::Referral"
        has_many :referred_users, :through => :referrals, :source => :resource

        has_one :referral, :foreign_key => 'resource_id', :class_name => "Referrari::Referral"
        has_one :referred_by, :through => :referral, :source => :referrer

        has_many :referral_codes, :class_name => "Referrari::ReferralCode"

        after_create :create_referral_code

        private

        def create_referral_code
          referral_codes.create
        end

      end
    end

  end
end
