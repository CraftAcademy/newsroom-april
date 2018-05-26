Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Then("I should see {string} in {string} field") do |expected_text, css_section|
  css_section = css_section.downcase.split.join('_')
  expect(find_field(css_section).value).to have_content expected_text
end
