FactoryBot.define do
  factory :access_token do
    # token { "MyString" }
    # user { nil }

    #token is generated after initialization

    association :user
  end
end
