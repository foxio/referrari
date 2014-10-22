require 'spec_helper'

describe Referrari::Referral do

  it { is_expected.to belong_to :referrer }
  it { is_expected.to belong_to :resource }

  describe '#code' do
    it { is_expected.to validate_presence_of :code}
    it { is_expected.to validate_uniqueness_of :code}

  end

end
