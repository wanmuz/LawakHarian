Given /^there is a joke called "([^"]*)"$/ do |title|
Factory(:joke, :title => title )
end