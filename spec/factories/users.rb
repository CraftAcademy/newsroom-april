FactoryBot.define do
  factory :user do |u|
    u.sequence(:email) { |n| "journalist#{n}@test.com"}
    u.password "password123"
    u.role 'journalist'
  end
end
