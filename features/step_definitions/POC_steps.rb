Given(/^I start Ooma Office Application$/) do
  $wait.until { !$driver.find_elements(:name, 'LOGIN').empty? }
end

When(/^I enter valid credentials in login window$/) do
  $driver.find_element(:name, 'Enter your phone number').clear
  $driver.find_element(:name, 'Enter your phone number').send_keys '16502004796'

  $driver.find_element(:name, 'Enter your extension number').clear
  $driver.find_element(:name, 'Enter your extension number').send_keys '1001'

  $driver.find_element(:name, 'Enter your password').clear
  $driver.find_element(:name, 'Enter your password').send_keys 'password1'
end

And(/^I click on Login button$/) do
  $driver.find_element(:name, 'LOGIN').click
end

Then(/^I verify that user was logged in$/) do
  $wait.until { !$driver.find_elements(:name, 'Karthik Bhoopathy').empty? }
  el = $driver.find_elements(:name, 'Karthik Bhoopathy')
  expect(el.size).not_to eq(0)
end

And(/^I log out$/) do
  $driver.find_element(:name, 'Karthik Bhoopathy').click
  $wait.until { !$driver.find_elements(:name, 'Sign Out').empty? }
  $driver.find_element(:name, 'Sign Out').click
  $wait.until { !$driver.find_elements(:name, 'LOGIN').empty? }
end

Given(/^I start Ooma Office Application using POM$/) do
  # $driver.start_driver
end

And(/^I logout if logged in POM$/) do
  UserHomePage.logout if BasePage.logged_in?
end

When(/^I login with valid credentials POM$/) do
  LoginPage.login('14022021859', '1002', 'password1').wait_until_loaded
end

Then(/^I verify that user was logged in POM$/) do
  actual_user_name = UserHomePage.user_name
  log(actual_user_name)
end

And(/^I log out POM$/) do
  UserHomePage.logout
end