module Referrari
  class ReferralCode < ActiveRecord::Base
    belongs_to :user
    has_many :referrals, :foreign_key => 'referrari_referral_code_id', :class_name => "Referrari::Referral"

    validates :code, uniqueness: true, presence: true

    before_validation :set_code, if: Proc.new { |rc| rc.code.nil? }

    def generate_code(size=16)
      chars = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a
      (0...size).collect { chars[Kernel.rand(chars.length)] }.join
    end

    private

    def set_code
      self.code = generate_code
    end

  end
end
