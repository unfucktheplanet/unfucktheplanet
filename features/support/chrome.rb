# Register a driver for chrome.

require 'selenium/webdriver'

Capybara.register_driver :chrome do |app|
  args = ['--window-size=1280,700']

  profile = Selenium::WebDriver::Chrome::Profile.new
  profile['intl.accept_languages'] = 'en'

  Capybara::Selenium::Driver.new(app, browser: :chrome, args: args, profile: profile)
end
