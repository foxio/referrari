module Referrari
  class Referral < ActiveRecord::Base
    belongs_to :referrer, class_name: "User"
    belongs_to :resource, class_name: "User"
    belongs_to :referral_code, :foreign_key => 'referrari_referral_code_id', :class_name => "Referrari::ReferralCode"
  end
end
