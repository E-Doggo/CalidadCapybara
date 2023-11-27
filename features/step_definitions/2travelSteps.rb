def flightsLoad()
  @arrayRadio = ["oneway", "roundtrip", "Business", "First", "Coach"]
  @arrayComboBox = ["fromPort", "fromMonth", "fromDay", "toPort", "toDay", "toMonth"]
  expect(page).to have_content("Flight Details")
  @arrayRadio.each do |value|
    expect(page).to have_selector("input[type='radio'][value='#{value}']")
  end
  
  @arrayComboBox.each do |value|
    expect(page).to have_selector("select[name='#{value}']")
  end
end

def registerLoad()
  @array = ["firstName", "lastName", "phone", "userName", "address1", "city", "state", "postalCode", "email", "password", "confirmPassword"]
  expect(page).to have_content("Contact Information")
  expect(page).to have_content("Mailing Information")
  expect(page).to have_content("User Information")
  
  @array.each do |value|
    expect(page).to have_selector("input[name='#{value}']")
  end
end

def signLoad()
  expect(page).to have_selector("input[name='userName']")
  expect(page).to have_selector("input[name='password']")
  expect(page).to have_selector("input[type='submit'][name='submit']")
end


Given(/^I am on the Mercury Tours homepage$/) do
  page.driver.browser.manage.window.maximize
  visit('http://demo.guru99.com/test/newtours/')
end

Given(/^I click the "([^"]*)" link$/) do |linkText|
  click_link(linkText)
end

When(/^I enter the required fields as show below$/) do |table|
  data = table.rows_hash
  data.each_pair do |key, value|
    case key
	when "First Name:"
    	fill_in 'firstName', :with => value
    	@name = value
	when "Last Name:"
		fill_in 'lastName', :with => value
		@lastName = value
    when "Phone:"
		fill_in 'phone', :with => value
    when "Email:"
		fill_in 'userName', :with => value
	when "Address:"
		fill_in 'address1', :with => value
	when "City:"
		fill_in 'city', :with => value
	when "State/Province:"
		fill_in 'state', :with => value
	when "Postal Code:"
		fill_in 'postalCode', :with => value
	when "Country:"
		select(value, :from => 'country')
	when "User Name:"
		fill_in 'email', :with => value
		@userName = value
	when "Password:"
		fill_in 'password', :with => value
	when "Confirm Password:"
		fill_in 'confirmPassword', :with => value
		@password = value
	end
  end
end

When(/^send my registration form$/) do
  xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[17]/td/input'
  find(:xpath, xpath_base).click
end

Then(/^the confirmation screen is show$/) do
  greeting = "Dear"+" "+@name+" "+@lastName 	
  expect(page).to have_content(greeting)
  
end

Then(/^my user name is "([^"]*)"$/) do |userName|
  puts userName
  labelText= "Note: Your user name is "+userName+"."
  puts labelText
  expect(page).to have_content(labelText)
  userNameLabel1 = find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
  userNameLabel2 = find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
  if (userNameLabel1 == userNameLabel2) & (labelText == userNameLabel1) & (labelText == userNameLabel2)
    puts "Validation for user name: Passed"    
  else
    raise "Validation for user name: Failed"    
    puts "Expected: "+labelText
    puts "Actual:"+userNameLabel1
  end
  #only for test
  puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b').text
  puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[3]/font/b').text
end

Given(/^I enter my user and password$/) do
  fill_in 'userName', :with => ENV['USER']
  fill_in 'password', :with => ENV['PSW']
end

When(/^I press the "([^"]*)" button$/) do |arg1|
  xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[4]/td[2]/div/input'
  find(:xpath, xpath).click
end


Then(/^the login successfully message is displayed$/) do
    expect(page).to have_content("Login Successfully")
    puts "ONLY FOR TEST  PURPOSES"
    puts find(:css, 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(1) > font > b').text
    puts find(:xpath,'/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[3]/td/p[1]/font/b').text
end


When(/^I press the Submit button$/) do
  xpath = '/html/body/div/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td/input'
  find(:xpath, xpath).click
end

Given('I press the Continue button') do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
  find(:xpath, xpath).click
end

Then('the no flights available text should load') do
  expect(page).to have_content("After flight finder - No Seats Avaialble")
end


Given('I pick the {string} radio button') do |string|
  newstring = string.downcase.gsub(/\s/, '')
  find("input[type='radio'][value='#{newstring}']").choose
end

Given('I select {int} passangers') do |int|
  select int.to_s, from: 'passCount'
end



Given('I pick to fly on {string} Class') do |string|
  find("input[type='radio'][value='#{string}']").choose
end

Given('I Select departure from {string}') do |string|
  select string, from: 'fromPort'
end

Given('I select Arrival day to be on the {int} of {string}') do |int, string|
  select int.to_s, from: 'fromDay'
  select string, from: 'fromMonth'
end

Given('I select Arrival to {string}') do |string|
  select string, from: 'toPort'
end

Given('I select Return day to be on the {int} of {string}') do |int, string|
  select int.to_s, from: 'toDay'
  select string, from: 'toMonth'
end

Then('the {string} Page should load with all its components') do |string|
  case string
  when "Flights"
    flightsLoad()
  when "SIGN-ON"
    signLoad()
  when "REGISTER"
    registerLoad()
  end
  
end