Feature: Creating an event
  In order to collect lightning talk submissions
  As a lightning talk organizer
  I would like to create an event

  Scenario: Creating it
    When I create an event
    Then I should see the event information
