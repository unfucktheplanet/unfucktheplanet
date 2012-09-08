Given /^I am on the (.*) page$/ do |page|
  if page == 'main'
    visit '/'
  else
    visit("/#{page.downcase}")
  end
end  

Then /^I should see a link to a (.*)\.$/ do | linktosee |
  page.has_content?(linktosee)
end