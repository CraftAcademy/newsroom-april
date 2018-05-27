Given("I am on the landing page") do
  visit root_path
end

Given("we have the following articles") do |table|
  table.hashes.each do |article|
    category = article["category"]
    article["category"] = Category.find_by(name: category) if category != nil
    create(:article, article)
  end
end

Given("we have the following categories") do |table|
  table.hashes.each do |category|
    create(:category, category)
  end
end

When("I click {string}") do |link|
  click_link_or_button link
end

When("I fill in {string} with {string}") do |field, text|
  fill_in field, with: text
end

When("I select {string} from categories menu") do |option|
  select option, from: 'article_category_id'
end
