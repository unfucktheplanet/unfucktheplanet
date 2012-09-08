# Configure Capybara for use with cucumber.

# Use Chrome as the default browser for testing.
# Capybara.javascript_driver = :chrome

Capybara.javascript_driver = :poltergeist

# Capybara defaults to XPath selectors rather than Webrat's default of CSS3.
# If you prefer to use XPath just remove this line and adjust any selectors
# in your steps to use the XPath syntax.
Capybara.default_selector = :css

Capybara.configure do |config|
  # Set capybara server port:
  config.server_port = 7787
end
