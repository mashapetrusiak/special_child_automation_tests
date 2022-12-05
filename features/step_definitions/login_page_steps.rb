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
