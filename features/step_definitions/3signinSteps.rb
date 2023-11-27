Given(/^I am on the Mercury Tours login page$/) do
  page.driver.browser.manage.window.maximize
  visit('http://demo.guru99.com/test/newtours/')

end
Given(/^I click the Sign Off link$/) do |linkText|
  click_link(linkText)
end
When(/^I enter the following information$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Username:"
    	fill_in 'firstName', :with => value
	when "Password:"
		fill_in 'password', :with => value
	end
  end
end
When(/^send my login form$/) do
  xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td/input'
  find(:xpath, xpath_base).click
end
Then(/^the login is succesfull$/) do
  greeting = "Login Successfully"
  expect(page).to have_content(greeting)

end
