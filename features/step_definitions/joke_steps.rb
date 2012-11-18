Given /^there is a joke called "([^"]*)"$/ do |title|
Factory(:joke, :title => title )
end
Given /^"([^"]*)" has created "([^"]*)"$/ do |email, title|
  Factory(:joke, :title => title , :user => User.find_by_email!(email))
end