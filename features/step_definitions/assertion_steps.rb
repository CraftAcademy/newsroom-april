Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Then("I should not see {string}") do |expected_text|
  expect(page).to have_no_content expected_text
end
