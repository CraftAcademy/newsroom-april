Given /I am on the landing page/ do
  visit root_path(locale: 'en')
end

Given("we have the following articles") do |table|
  table.hashes.each do |article|
    category = article["category"]
    user_email = article["user"]
    article["category"] = Category.find_by(name: category) if category != nil
    article["user"]= User.find_by(email: user_email) if user_email != nil
    create(:article, article)
  end
end

Given("we have the following articles in swedish") do |table|
  article_number = 0
  all = Article.all
  I18n.locale = :sv
  table.hashes.each do |article|
    # article["category"] = Category.find_by(name: category) if category != nil
    article["category"] = all[article_number].category
    all[article_number].update_attributes(article)
    article_number += 1
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

Given("user is signed in") do
  user = create(:user)
  login_as user
end

Given("I am on the {string} page") do |article_title|
  article = Article.find_by(headline: article_title)
  visit article_path(article, locale: 'en')
end

Given("the following users exist") do |table|
  table.hashes.each do |user|
    create(:user, user)
  end
end

Given("I am signed in as {string}") do |user_email|
  user = User.find_by(email: user_email)
  login_as user
end

When("I visit the new article page") do
  visit new_article_path
end

When("I visit {string} edit page") do |article_title|
  article = Article.find_by(headline: article_title)
  visit edit_article_path(article)
end

Then("show me the page") do
  save_and_open_page
end

