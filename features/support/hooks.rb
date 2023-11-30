
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

#Before running the hook one has to wait for the scenario to fail, this will take a few seconds
After('@checkNoFlightsAvailable') do |scenario|
  begin
    if scenario.failed?
      puts "Running post-condition for failed scenarios: Go back to homepage"
      
      find(:xpath, '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a').click
    end
  rescue StandardError => e
    puts "Error in After hook: #{e.message}"
  end
end