ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

# Additional libraries:
require 'database_cleaner'
require 'email_spec'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  # If you prefer another mock framework, uncomment one of the following:
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr

  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures:
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # If true, the base class of anonymous controllers will be inferred
  # automatically. This will be the default behavior in future versions of
  # rspec-rails.
  config.infer_base_class_for_anonymous_controllers = false

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = "random"

  # Controller macros for handling authentication:
  config.include Devise::TestHelpers, type: :controller

  # Configure "DatabaseCleaner" to run tests in isolation:
  DatabaseCleaner.strategy = :transaction

  config.before :each do
    DatabaseCleaner.start
  end

  config.after :each do
    DatabaseCleaner.clean
  end

  # Make email spec helpers and matchers available:
  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers

  # Clear mail deliveries after each test:
  config.after :each do
    case ActionMailer::Base.delivery_method
      when :test  then ActionMailer::Base.deliveries.clear
      when :cache then ActionMailer::Base.clear_cache
    end
  end
end
