class LoginPage
  include Capybara::DSL

  def visit_login_page
    visit('https://demo.guru99.com/test/newtours/login.php')
  end

  def click_register_link
    find(:xpath, '/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/font/a').click
  end

  def enter_username(username)
    fill_in 'userName', with: username
  end

  def enter_password(password)
    fill_in 'password', with: password
  end

  def submit_login_form
    find(:xpath, '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[4]/td/input').click
  end

  def successful_login_message
    'Login Successfully'
  end

  def failed_login_message_present?
    has_xpath?('/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[2]/td[2]/span')
  end
end
