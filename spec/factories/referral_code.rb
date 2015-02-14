FactoryGirl.define do

  factory :referral_code, class: Referrari::ReferralCode do
    association :user, factory: [:user]
  end

end
