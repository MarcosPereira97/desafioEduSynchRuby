require 'selenium-webdriver'
require 'cucumber/rake/task'
require 'base64'
require 'capybara/poltergeist'

Before do
  @login = Login.new
  @preparacao = TestPreparations.new
  @prova = Prova.new
  page.driver.browser.manage.window.maximize
end
