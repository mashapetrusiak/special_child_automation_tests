class MainPage < SitePrism::Page
  set_url'https://rehabcv20211216123152.azurewebsites.net'

  element :log_in_link, 'ul > ul > li:nth-child(2) > a'
end