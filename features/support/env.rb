require 'capybara'

require 'capybara/cucumber'

require 'selenium-webdriver'

require 'site_prism'

require 'rspec'

require 'yaml'

require 'webdrivers'

require 'cucumber/rake/task'

require 'report_builder'



EL = YAML.safe_load('./data/elm.yaml')

@browser = ENV['BROWSER']

Capybara.register_driver :rack_test do |app|

  case @browser

  when 'chrome'

    @driver = Capybara::Selenium::Driver.new(app, browser: :chrome)

  when 'edge'

    @driver = Capybara::Selenium::Driver.new(app, browser: :edge)

  when 'firefox'

    @driver = Capybara::Selenium::Driver.new(app, browser: :firefox)

  end

end



RSpec.configure do |config|

  config.include Capybara::DSL

  config.include Capybara::RSpecMatchers

end



Capybara.configure do |config|

  config.default_driver = @driver

  config.default_max_wait_time = 30

  config.default_selector = :css

end

