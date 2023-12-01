Given(/^I am on the Mercury Tours login page$/) do
  page.driver.browser.manage.window.maximize
  visit('https://demo.guru99.com/test/newtours/login.php')
end

And(/^I click the "([^"]*)" button$/) do |linkText|
  find(:xpath, '/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/font/a').click

end

Then(/^the "([^"]*)" button is shown$/) do |linkText|
  has_content?(linkText)
end

When(/^I enter the following information$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "Username:"
    	fill_in 'userName', :with => value
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

Then(/^the login is failed$/) do
  xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[2]/td[2]/span'
  if page.has_xpath?(xpath_base)
  end
end
