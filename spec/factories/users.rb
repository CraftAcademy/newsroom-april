FactoryBot.define do
  factory :user do
    email "test@test.com"
    password "1234567"
    role 'journalist'
  end
end
