require_relative 'login_page'
login_page = LoginPage.new

Given(/^I am on the Mercury Tours login page$/) do
  login_page.visit_login_page
end

And(/^I click the "([^"]*)" button$/) do |linkText|
  login_page.click_register_link
end

Then(/^the "([^"]*)" button is shown$/) do |linkText|
  expect(page).to have_content(linkText)
end

When(/^I enter the following information$/) do |table|
  data = table.rows_hash
  login_page.enter_username(data['Username:'])
  login_page.enter_password(data['Password:'])
end

When(/^send my login form$/) do
  login_page.submit_login_form
end

Then(/^the login (.*)$/) do |outcome|
  case outcome
  when 'is successful'
    greeting = login_page.successful_login_message
    expect(page).to have_content(greeting)
  when 'fails'
    expect(login_page.failed_login_message_present?).to be true
  end
end
