require 'spec_helper'

describe Referrari::Helpers::Referrals do

  let(:referrals) { Referrari::Helpers::Referrals.new({}) }

  it "renders dummy content to_s" do
    expect(referrals.to_s()).to eq("Some content")
  end

end
