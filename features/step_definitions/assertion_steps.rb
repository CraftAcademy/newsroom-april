Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Given("I click {string}") do |link|
  click_link_or_button link
end
