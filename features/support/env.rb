require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'allure-cucumber'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://develop.newstudent.edusynch.com/' # Url que será utilizada
  config.default_max_wait_time = 15 # define o tempo limite que o capybara vai aguardar o elemento ficar disponível
end
