require 'spec_helper'

describe Referrari::ActionViewExtension do

  let(:dummy_view) do
    class DummyView
      include Referrari::ActionViewExtension
    end
    DummyView.new
  end

  it "renders dummy content" do
    expect(dummy_view.referrari_box()).to eq("Some content")
  end

end
