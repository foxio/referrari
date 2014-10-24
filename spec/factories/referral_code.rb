FactoryGirl.define do

  factory :referral_code, class: Referrari::ReferralCode do
    sequence(:code) { |n| "123-#{n}" }
    association :user, factory: [:user]
  end

end
