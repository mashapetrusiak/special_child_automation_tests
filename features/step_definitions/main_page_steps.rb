When(/^I am on Special Child site$/) do
  @main_page = MainPage.new
  @main_page.load
end

And(/^I go to login page$/) do
  @main_page.log_in_link.click
end