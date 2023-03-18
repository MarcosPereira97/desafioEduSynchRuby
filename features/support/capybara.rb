Capybara.javascript_driver = :chrome

Capybara.register_driver :chrome_fullscreen_noinfobar do |app|
  args = ['--use-fake-device-for-media-stream', '--use-fake-ui-for-media-stream']

  Capybara::Selenium::Driver.new(app, { browser: :chrome, args: args })
end
