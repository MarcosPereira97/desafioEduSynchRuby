require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'allure-cucumber'
require 'capybara/poltergeist'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://develop.newstudent.edusynch.com/' # Url que será utilizada
  config.default_max_wait_time = 30 # define o tempo limite que o capybara vai aguardar o elemento ficar disponívels
end
