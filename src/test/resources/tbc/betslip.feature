Feature: Interact with bet slip

  @betslip
  Scenario Outline: Add <outcome> football opportunity to the bet slip
    Given I am on a random "football event"
    When I select the "<outcome>" outcome
    And I open the bet slip
    Then I can see the "<outcome>" opportunity on the bet slip

    Examples:
      | outcome |
      | home    |
      | draw    |
      | away    |

  @betslip
  Scenario: Select multiple opportunities and remove them
    Given I am on a random "football competition"
    When I select "2" outcomes from different events in competition events widget
    And I open the bet slip
    Then I can see "2" opportunities on the bet slip
    When I remove one opportunity from the bet slip
    Then I can see "1" opportunities on the bet slip
    When I click the Clear Bet Slip button
    Then I can see "0" opportunities on the bet slip

  @betslip @TCM-117
  Scenario: Place a single bet
    Given I am on a random "football event"
    And I am logged in
    And I select the "home" outcome
    And I open the bet slip
    And I enter a "0.10" stake
    When I click the Place Bet button
    Then the bet is placed

  @Pending @betslip
  Scenario: Place a multiple bet
    Given I am on a random "football competition"
    And I am logged in
    When I select "2" outcomes from different events in competition events widget
    And I open the bet slip
    And I enter a "0.10" double stake
    When I click the Place Bet button
    Then the bet is placed

  @Pending @betslip
  Scenario: Place an Outright bet
    Given I am on a random "football outrights"
    And I am logged in
    When I select random Outright market
    And I select the first outcome
    And I open the bet slip
    And I enter a "0.10" stake
    When I click the Place Bet button
    Then the bet is placed

  @Pending @betslip
  Scenario: Each Way details are visible on the Bet Slip
    Given I am on a random "each way market"
    And I am logged in
    When I select the first outcome
    And I open the bet slip
    And I enter a "0.10" stake
    And I check an each way checkbox
    And I open each way details
    Then I can see each way details

  @Pending @betslip @TCM-121
  Scenario: Place an Each Way bet
    Given I am on a random "football each way market"
    And I am logged in
    When I select the first outcome
    And I open the bet slip
    And I enter a "0.10" stake
    And I check an each way checkbox
    And I click the Place Bet button
    Then the bet is placed
