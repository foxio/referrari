module Referrari
  class ReferralCode < ActiveRecord::Base
    belongs_to :user

    validates :code, uniqueness: true, presence: true
  end
end
