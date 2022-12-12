When(/^I am on login page$/) do
  @login_page = LoginPage.new
end

Then(/^login page is opened$/) do
  expect(current_url).to include('/Account/Login')
end

And(/^login page should contain (login|password) field$/) do |field_name|
  case field_name
  when 'login'
    expect(page).to have_content('Електронна пошта/Логін')
  when 'password'
    expect(page).to have_content('Пароль')
  end
end

And(/^login page should contain submit button$/) do
  expect(page).to have_button('Увійти')
end

Given(/^there is a registered user$/) do
  @admin_login = 'admin@gmail.com'
  @admin_pass = 'P@$$w0rd'
end

And(/^I fill (login|password) field with my (login|password)$/) do |credentials|
  if credentials == 'login'
    @login_page.login_field.set(@admin_login)
  else
    @login_page.pass_field.set(@admin_pass)
  end
end

And(/^I click on submit button$/) do
  @login_page.submit_button.click
end

Then(/^I am sign in the site$/) do
  expect(page).to have_css(':nth-child(6) > a')
  expect(page).to have_content(@admin_login)
end

And(/^I fill login field with my random login$/) do
  @login_page.login_field.set('test_login')
end

Then(/^I should see error message$/) do
  within(@login_page.error_message) do
    expect(page).to have_content(SupportData::Errors.LOGIN_ERROR_MESSAGE)
  end
end

And(/^I fill password field with my random password$/) do
  @login_page.pass_field.set('test_pass')
end
