Feature: Submitting a lightning talk proposal
  In order to give a lightning talk at Codemash
  As a prospective speaker
  I want to submit my topic to the list of lightning talks


  Scenario: Submitting a talk proposal
    Given I'm on the talk proposal page
    When I submit my proposal
    Then I should see it on the list
