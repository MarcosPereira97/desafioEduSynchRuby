require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'allure-cucumber'
require 'capybara/poltergeist'

options = Selenium::WebDriver::Chrome::Options.new

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,
                                 capabilities: options,
                                 browser: :chrome)
end
Capybara.default_driver = :chrome

Capybara.configure do |config|
  config.default_driver = :chrome
  config.default_max_wait_time = 30
  config.app_host = 'https://develop.newstudent.edusynch.com/'
end

Selenium::WebDriver.logger.ignore(:deprecations)
