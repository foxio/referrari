module Referrari
  class Referral < ActiveRecord::Base
    belongs_to :referrer, class_name: "User"
    belongs_to :resource, class_name: "User"

    validates :code, uniqueness: true, presence: true
  end
end
