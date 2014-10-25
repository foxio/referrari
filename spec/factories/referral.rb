FactoryGirl.define do

  factory :referral, class: Referrari::Referral do

    trait :with_referrer do
      association :referrer, factory: [:user]
    end

    trait :with_resource do
      association :resource, factory: [:user]
    end

  end

end
