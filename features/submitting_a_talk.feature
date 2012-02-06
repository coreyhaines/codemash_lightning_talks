Feature: Submitting a lightning talk proposal
  In order to give a lightning talk at Codemash
  As a prospective speaker
  I want to submit my topic to the list of lightning talks


  Scenario: Submitting a talk proposal
    Given I have created an event
    Given I'm on the talk proposal page
    When I submit my proposal
    Then I should see it on the list

  Scenario: Setting a limit to the number of lightning talks
    Given I have created an event
    When I set the limit to 10 lightning talks
    And I'm on the talk proposal page
    And I submit 10 proposals
    Then I should not be able to submit any more proposals

