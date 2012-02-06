When /^I create an event$/ do
  visit new_event_url
  fill_in :name, :with => "Fun times"
  click_button "Create"
end

Then /^I should see the event information$/ do
  event = Event.last
  page.should have_content(event.name)
end


