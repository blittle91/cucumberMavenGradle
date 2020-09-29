Feature: Interact with bet slip

#  Tags: Unit, Integration, System, XF, Manual, Compliance, Pending

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

  Scenario: Select multiple opportunities and remove them
    Given I am on a random "football competition"
    When I select "2" outcomes from different events in competition events widget
    And I open the bet slip
    Then I can see "2" opportunities on the bet slip
    When I remove one opportunity from the bet slip
    Then I can see "1" opportunities on the bet slip
    When I click the Clear Bet Slip button
    Then I can see "0" opportunities on the bet slip

  Scenario: Place a single bet
    Given I am on a random "football event"
    And I am logged in
    And I select the "home" outcome
    And I open the bet slip
    And I enter a "0.10" stake
    When I click the Place Bet button
    Then the bet is placed

  @Pending
  Scenario: Place a multiple bet
    Given I am on a random "football competition"
    And I am logged in
    When I select "2" outcomes from different events in competition events widget
    And I open the bet slip
    And I enter a "0.10" double stake
    When I click the Place Bet button
    Then the bet is placed

  @Pending
  Scenario: Place an Outright bet
    Given I am on a random "football outrights"
    And I am logged in
    When I select random Outright market
    And I select the first outcome
    And I open the bet slip
    And I enter a "0.10" stake
    When I click the Place Bet button
    Then the bet is placed

  @Pending
  Scenario: Each Way details are visible on the Bet Slip
    Given I am on a random "each way market"
    And I am logged in
    When I select the first outcome
    And I open the bet slip
    And I enter a "0.10" stake
    And I check an each way checkbox
    And I open each way details
    Then I can see each way details

  @Pending
  Scenario: Place an Each Way bet
    Given I am on a random "football each way market"
    And I am logged in
    When I select the first outcome
    And I open the bet slip
    And I enter a "0.10" stake
    And I check an each way checkbox
    And I click the Place Bet button
    Then the bet is placed


  # These tests could be covered as part of an e2e user journey
  # For test execution optimization, this is covered in GSFE-600-3
#  @GSFE-600-1 @Manual @System @Pending
#  Scenario: Verify each way returns are correct on Bet Slip
#
#  # For test execution optimization, this is covered in GSFE-600-3
#  @GSFE-600-2 @Integration @System @Pending
#  Scenario: Verify potential returns are correct for each way bets in open bets

  @GSFE-600-3 @Integration @System @Pending
  Scenario Outline: Verify potential returns are correct for each way bets in settled bets
    Given I have an each way market with <odds>
    When I enter the <stake> amount
    Then the correct <return> is calculated in Bet Slip
    And the returns are correct in open bets
    And the returns are correct in settled bets
    Examples:
      | odds | stake | return |
      | 2.20 | 0.07  | 0.25   |
