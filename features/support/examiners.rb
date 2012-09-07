# Define annotations to control cucumber scenario execution

# Wait for a key stroke after each step
AfterStep '@step-through' do
  print "Hit any key to continue"
  STDIN.getc
end

# Add a delay between @slo-mo scenarios
After '@slo-mo' do |scenario, block|
  sleep 10
end

# When running @slo-mo scenarios, wait a second after each step
AfterStep '@slo-mo' do |scenario|
  sleep 1
end

# Show the browser window whenever a step fails
After '@show-page-on-fail' do |scenario|
  if scenario.failed?
    print "Hit a key to continue"
    STDIN.getc
  end
end

# Stop after each @stay-open scenario and leave the browser window open
After '@stay-open' do |scenario|
  print "Done. Hit any key to close the browser"
  STDIN.getc
end
