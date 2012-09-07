# Configure how cucumber deals with data stored in the test database.

DatabaseCleaner.strategy = :transaction
Cucumber::Rails::Database.javascript_strategy = :truncation
