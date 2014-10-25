require 'spec_helper'

describe Referrari::ReferralCode do

  it { is_expected.to belong_to :user }
  it { is_expected.to have_many :referrals }

  describe '#code' do
    it { is_expected.to validate_presence_of :code}
    it { is_expected.to validate_uniqueness_of :code}

  end

end
