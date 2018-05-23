Given("I am on the landing page") do
  visit root_path
end

Given("we have the following {string}") do |string, table|
  table.hashes.each do |article|
    create(:article, article)
  end
end
