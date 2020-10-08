Feature: Bet settlement

  Tags: Unit, Integration, System, XF, Manual, Compliance, Pending

  # The result colour is not tested at unit level. For test execution optimization, this is covered in GSFE-605-2
  @Pending @settlement
  Scenario: Verify dead heat colours should represent results, e.g. green for win and blue for placed

  @Integration @Pending
  Scenario: Verify a winning bet settles correctly when dead heat occurs
    Given I have a bet added to my bet slip
    And that bet wins
    When my selected outcome results in a dead heat
    And I am viewing the bet in settled My Bets
    Then I can see the selected outcome market as a dead heat
    And I can see the dead heat colours represent the results correctly
    And I can see the reduction percentage for a dead heat is correct

  @Unit @Manual @Pending @settlement
  Scenario: Verify an each way bet (win and place) settles correctly when dead heat occurs
    Given I have an each way bet added to my bet slip
    And that bet wins
    When my selected outcome is placed
    And my selected outcome results in a dead heat
    And I am viewing the bet in settled My Bets
    Then I can see the selected outcome market as a dead heat
    And I understand how payout was calculated based on dead heat rules

  @Unit @Manual @Pending @settlement
  Scenario: Verify an each way bet (place only) settles correctly when dead heat occurs
    Given I have an each way bet added to my bet slip
    And that bet loses
    When my selected outcome is placed
    And my selected outcome resulted in a dead heat
    And I am viewing the bet in settled My Bets
    Then I can see the selected outcome market as a dead heat
    And I understand how payout was calculated based on dead heat rules

  @Unit @Manual @Pending @settlement
  Scenario: Verify an each way accumulator bet (win and place) settles correctly when dead heat occurs

  @Manual @Pending @settlement
  # We can't really test this.
  Scenario: Verify dead heat rules are not applied when the tie or draw is offered in the market

  @Unit @Manual @Pending @settlement
  Scenario: Verify dead heat rules are correctly applied on the event but not for a bet when it is a loss
    Given I have an each way event
    And I have placed a single bet without each way
    When the event resulted with a dead heat for place
    Then I loss the bet
    And the dead heat information is displayed for the event
    And the dead heat reduction message is not applied for my bet

