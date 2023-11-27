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