Then(/^error in password field "([^"]*)" is show$/) do |errorMessage|
  expect(page).to have_content(errorMessage)
  sleep 2
end