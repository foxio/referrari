FactoryGirl.define do

  factory :user do
    sequence(:email) { |n| "person-#{n}@example.com" }

    trait :with_referrals do
      after(:build) do |u,evl|
        u.referrals << FactoryGirl.create(:referral,:with_resource)
      end
    end

  end

end
