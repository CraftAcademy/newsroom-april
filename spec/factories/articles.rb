FactoryBot.define do
  factory :article do
    headline "MyText"
    content "MyText"
    category
    user
    published true
  end
end
