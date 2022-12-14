class LoginPage < SitePrism::Page
  set_url 'https://rehabcv20211216123152.azurewebsites.net/Account/Login'

  element :login_field, '#Email'
  element :pass_field, '#Password'
  element :submit_button, ':nth-child(4) > input'
  element :error_message, '.validation-summary-errors'
end
