require 'spec_helper'

describe User do

  describe '#referrals' do
    let(:user) { FactoryGirl.create(:user, :with_referrals) }

    it { is_expected.to have_many :referrals }
    it { is_expected.to respond_to :referrals }

    it "has referrals" do
      expect(user.referrals.length).to eq(1)
    end

  end

  describe '#referred_users' do
    let(:user) { FactoryGirl.create(:user, :with_referrals) }

    it { is_expected.to have_many :referred_users }
    it { is_expected.to respond_to :referred_users }

    it "has referrals" do      
      expect(user.referred_users.length).to eq(1)
    end
  end

  describe '#referral' do
    it { is_expected.to have_one :referral }
    it { is_expected.to respond_to :referral }
  end

  describe '#referred_by' do
    it { is_expected.to have_one :referred_by }
    it { is_expected.to respond_to :referred_by }
  end

end
