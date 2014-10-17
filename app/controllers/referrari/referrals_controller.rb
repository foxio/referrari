require_dependency "referrari/application_controller"

module Referrari
  class ReferralsController < ApplicationController

    def index
      @referrals = Referral.all
    end

  end
end
