Given /^I visit the "([^"]*)" page$/ do |url|
  visit url 
end

When /^I look somewhere near top of the page$/ do
end

Then /^I should see a "([^"]*)" link$/ do |text|
  page.should have_content(text)
end

When /^I click on "([^"]*)"$/ do |text|
  click_on text
end

Then /^I should see email and password fields$/ do
  page.should have_field("Email")
  page.should have_field("Password")
end

Then /^I should see a form for a new name\/email\/password account$/ do
  page.should have_field("Real name")
  page.should have_field("Email")
  page.should have_field("Password")
  page.should have_field("Confirm password")
end

When /^I fill out the form with my name, email and password$/ do
  fill_in "Real name", with: "Test User"
  fill_in "Email", with: "test.user@example.org"
  fill_in "Password", with: "testtest"
  fill_in "Confirm password", with: "testtest"
  click_button "Register"
end

Then /^I should be notified that the account has been created$/ do
  page.should have_content("Your account has been created successfully!")
end

