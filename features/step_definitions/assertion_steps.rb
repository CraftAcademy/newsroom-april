Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Then("I should not see {string}") do |expected_text|
  expect(page).to have_no_content expected_text
end

Then("I should see {string} in {string}") do |expected_text, css_section|
  css_section = '#' + css_section.downcase.split.join('-')
  expect(page.find(css_section)).to have_content expected_text
end
