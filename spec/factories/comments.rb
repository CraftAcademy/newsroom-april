FactoryBot.define do
  factory :comment do
    content "MyText"
    article
    user 
  end
end
