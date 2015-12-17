
Given(/^I am on the login page$/) do
  @b = TumblrLogin.new @browser
  @b.visit
end

When(/^I enter the incorrect credentials$/) do
  @b.email "incorrect@gmail.com"
  @b.password "incorrect123"
  @b.login_button
end

Then(/^I should remain in the login page$/) do
  expect(@b.url).to eq "https://www.tumblr.com/login"
end


When(/^I enter the correct credentials$/) do
  @b.email "300globaltest@gmail.com"
  @b.password "TESTing123"
  @b.login_button
end

Then(/^I should be on the dash board$/) do
  expect(@b.url).to eq "https://www.tumblr.com/dashboard"
end

