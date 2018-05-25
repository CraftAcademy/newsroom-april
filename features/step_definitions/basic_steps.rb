Given("I am on the landing page") do
  visit root_path
end

Given("we have the following articles") do |table|
  table.hashes.each do |article|
    article["category"] = Category.find_by(name:article["category"]) if article["category"] != nil
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
  find('article[category_id]', text: 'Sports', visible: false).select_option
end
