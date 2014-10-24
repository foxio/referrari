module Referrari
  class ReferralCode < ActiveRecord::Base
    belongs_to :user
    has_many :referrals, :foreign_key => 'referrari_referral_code_id', :class_name => "Referrari::Referral"

    validates :code, uniqueness: true, presence: true
  end
end
