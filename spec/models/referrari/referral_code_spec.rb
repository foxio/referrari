require 'spec_helper'

describe Referrari::ReferralCode do

  it { is_expected.to belong_to :user }
  it { is_expected.to have_many :referrals }

  describe '#code' do
    it { is_expected.to validate_uniqueness_of :code}

    it "generates a code if not provided on create" do
      referral_code = FactoryGirl.create(:referral_code)
      expect(referral_code.code).to_not eq(nil)
      expect(referral_code.code).to_not eq("")
    end

    it "keeps existing code on create" do
      provided_code = "testing"
      referral_code = FactoryGirl.create(:referral_code, code: provided_code)
      expect(referral_code.code).to eq(provided_code)
    end

  end

end
