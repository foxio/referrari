require 'spec_helper'

describe Referrari::Referral do
  
  it { is_expected.to belong_to :referrer }
  it { is_expected.to belong_to :resource }

end
