Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Then("I should not see {string}") do |expected_text|
  expect(page).to have_no_content expected_text
end

Given("I should be redirected to login page") do
  expect(current_path).to include "sign_in"
end
