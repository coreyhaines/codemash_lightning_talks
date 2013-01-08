require 'spec_helper'

describe Event do
  describe "admin token" do
    it "sets it on creation" do
      event = Event.create name: "test"
      event.admin_token.should_not be_nil
    end

    it "creates unique ones for each event" do
      event1 = Event.create name: "test"
      event2 = Event.create name: "test"
      event1.admin_token.should_not == event2.admin_token
    end
  end
end
