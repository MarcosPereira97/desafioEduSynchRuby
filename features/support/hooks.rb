require 'selenium-webdriver'
require 'cucumber/rake/task'
require 'base64'

Before do
  @login = Login.new
  @prova = FormProva.new
  page.driver.browser.manage.window.maximize
end
