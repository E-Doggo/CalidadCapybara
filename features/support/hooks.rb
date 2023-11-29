
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

After('@checkNoFlightsAvailable') do |scenario|
  begin
    if scenario.failed?
      puts "Running post-condition for failed scenarios: Check for 'No Flights Available' message"
      
      # Add a wait before attempting to click
      find(:xpath, '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a').click
    end
  rescue StandardError => e
    puts "Error in After hook: #{e.message}"
  end
end