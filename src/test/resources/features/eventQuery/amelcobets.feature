Feature: Amelco historical bets
  As a user
  I want to have access to my bets within sportsbook regardless of the trading system used
  So that I can review my bets details for the last one year

#  Tags: Unit, Integration, System, XF, Manual, Compliance, Pending

  Background:
    Given I am customer with Amelco bets for the last one year
    And I am logged in

  @Integration @Pending
  Scenario Outline: Verify a user can view Amelco bet history for various open bets for the last one year
    When I view my Open Bets page
    Then I can see a Historical bets banner underneath the Open/Settled tabs
    And I am able to navigate to my Settled (Historical) view
    And I can see my open <bet-type> bets for the last one year in Open (Historical) view
    Examples:
      | bet-type                                   |
      | single                                     |
      | straight line accumulators   (e.g. treble) |
      | complex multiples  (e.g. trixie)           |
      | each way single                            |
      | each way multiple                          |

  @Integration @Pending
  Scenario Outline: Verify a user can view Amelco bet history for various settled bets for the last one year
    When I view my Settled Bets page
    Then I can see a Historical bets banner underneath the Open/Settled tabs
    And I am able to navigate to my Settled (Historical) view
    And I can see my settled bets for the <result-type> for the last one year in Settled (Historical) view
    Examples:
      | bet-type                                   | result-type |
      | single                                     | lost        |
      | straight line accumulators   (e.g. treble) | win         |
      | complex multiples  (e.g. trixie)           | void        |
      | each way single                            | dead heat   |
      | each way multiple                          | place only  |

