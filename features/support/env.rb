require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"

@browser = ENV["BROWSER"]

Capybara.configure do |config|
  case @browser
  when "chrome"
    @driver = :selenium_chrome
  when "edge"
    @driver = :selenium_webdriver
  when "chrome_headless"
    @driver = :selenium_chrome_headless
  when "edge_headless"
    @driver = :selenium_webdriver_headless
  end

  config.default_driver = @driver
  config.default_max_wait_time = 30
  config.default_selector = :css
end

EL = YAML.load_file("./data/elm.yml")