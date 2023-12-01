Given('I press the Continue button') do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
  find(:xpath, xpath).click
end

Then('the no flights available message should appear on screen') do
  expect(page).to have_content("After flight finder - No Seats Avaialble")
end

Then('an available flight should be found') do
  expect(page).to have_content("10 Seats Avaialble")
end


Given('I pick the {string} button') do |string|
  newstring = string.downcase.gsub(/\s/, '')
  find("input[type='radio'][value='#{newstring}']").choose
end

When('I select {int} passangers') do |int|
  select int.to_s, from: 'passCount'
end



When('I pick to fly on {string} Class') do |string|
  find("input[type='radio'][value='#{string}']").choose
end

Given('I Select departure from {string}') do |string|
  select string, from: 'fromPort'
end

When('I select Arrival day to be on the {int} of {string}') do |int, string|
  select int.to_s, from: 'fromDay'
  select string, from: 'fromMonth'
end

When('I select Arrival to {string}') do |string|
  select string, from: 'toPort'
end

When('I select Return day to be on the {int} of {string}') do |int, string|
  select int.to_s, from: 'toDay'
  select string, from: 'toMonth'
end
