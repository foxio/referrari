module Referrari
  # = Helpers
  module ActionViewExtension
    # A helper that renders ???
    def referrari_box(options = {})
      referals = Referrari::Helpers::Referrals.new(options)
      referals.to_s
    end
  end
end
