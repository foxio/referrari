require 'spec_helper'

describe User do

  it { is_expected.to have_many :referrals }
  it { is_expected.to have_many :referred_users }

  it { is_expected.to have_one :referral }
  it { is_expected.to have_one :referred_by }

end
