Given /^I'm on the talk proposal page$/ do
  visit proposals_url
end

When /^I submit my proposal$/ do
  fill_in "Name", :with => "Corey"
  fill_in "Email Address", :with => "coreyhaines@example.com"
  fill_in "Twitter Handle", :with => "@coreyhaines"
  fill_in "Topic", :with => "Very interesting talk"
  click_button "Submit my lightning talk"
end

Then /^I should see it on the list$/ do
  within(".proposals") do
    page.should have_css(".proposal", :text => "Very interesting talk")
  end
end

