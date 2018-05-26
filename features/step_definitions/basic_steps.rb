Given("I am on the landing page") do
  visit root_path
end

Given("we have the following articles") do |table|
  table.hashes.each do |article|
    create(:article, article)
  end
end

When("I click {string}") do |link|
  click_link_or_button link
end

When("I fill in {string} with {string}") do |field, text|
  fill_in field, with: text
end

Given("user is signed in") do
  user = create(:user)
  login_as user
end

Given("I am on the {string} page") do |article_title|
  article = Article.find_by(headline: article_title)
  visit article_path(article)
end
