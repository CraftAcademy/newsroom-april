Then("I should see {string}") do |expected_text|
  expect(page).to have_content expected_text
end

Then("I should see {string} in {string} field") do |expected_text, css_section|
  css_section = css_section.downcase.split.join('_')
  expect(find_field(css_section).value).to have_content expected_text
end

Then("I should not see {string}") do |expected_text|
  expect(page).to have_no_content expected_text
end

Then("I should see {string} in {string}") do |expected_text, css_section|
  css_section = '#' + css_section.downcase.split.join('-')
  expect(page.find(css_section)).to have_content expected_text
end

Given("I should be redirected to login page") do
  expect(current_path).to eq new_user_session_path
end
