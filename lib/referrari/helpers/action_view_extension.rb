module Referrari
  # = Helpers
  module ActionViewExtension
    # A helper that renders ???
    def referrari_box(options = {})
      referals = Referrari::Helpers::Referals.new("some_template", options)
      referals.to_s
    end
  end
end
