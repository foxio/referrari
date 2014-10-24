require 'spec_helper'

describe Referrari::Referral do

  it { is_expected.to belong_to :referrer }
  it { is_expected.to belong_to :resource }
  it { is_expected.to belong_to :referral_code }

end
