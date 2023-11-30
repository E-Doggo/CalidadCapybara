def flightsLoad()
  expect(page).to have_content("Flight Details")
  @arrayRadio.each do |value|
    expect(page).to have_selector("input[type='radio'][value='#{value}']")
  end
  
  @arrayComboBox.each do |value|
    expect(page).to have_selector("select[name='#{value}']")
  end
end

def registerLoad()
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

def createArrayRegister(table)
  data = table.rows_hash
  data.each_pair do |key, value|
  @array = []
  case value
	when "First Name"
    @array.push("firstName")
	when "Last Name"
		@array.push("lastName")
  when "Phone"
    @array.push("phone")
  when "Email"
    @array.push("userName")
	when "Address"
    @array.push("address1")
  when "City"
    @array.push("city")
  when "State/Province"
    @array.push("state")
	when "Postal Code"
    @array.push("postalCode")
  when "User Name:"
    @array.push("email")
	when "Password:"
    @array.push("password")
  when "Confirm Password:"
    @array.push("confirmPassword")
  end
  end
end


def createArrayFlights(table)
  data = table.rows_hash
  data.each_pair do |key, value|
  @arrayComboBox = []
  @arrayRadio = []
  case value
	when "One Way"
    @arrayRadio.push("oneway")
	when "Round trip"
		@arrayRadio.push("roundtrip")
  when "Passengers"
    @arrayComboBox.push("passCount")
  when "Departing From"
    @arrayComboBox.push("fromPort")
	when "On Month"
    @arrayComboBox.push("fromMonth")
  when "On Day"
    @arrayComboBox.push("fromDay")
  when "Arriving In"
    @arrayComboBox.push("toPort")
	when "Returning Month"
    @arrayComboBox.push("toMonth")
  when "Returning Day"
    @arrayComboBox.push("toDay")
	when "Economy Class"
    @arrayRadio.push("Coach")
  when "Business Class"
    @arrayRadio.push("business")
  when "First Class"
    @arrayRadio.push("first")
  end
  end
end


Then('the {string} Page should be shown correctly with the following format') do |string, table|
  case string
  when "Flights"
    createArrayRegister(table)
    flightsLoad()
  when "SIGN-ON"
    signLoad()
  when "REGISTER"
    createArrayRegister(table)
    registerLoad()
  end
  
end