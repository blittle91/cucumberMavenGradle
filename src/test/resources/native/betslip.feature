Feature: Native Betslip

  @manual @betslip
  Scenario: View selected outcomes in Bet slip
    Given an outcome has been added to the Bet slip
    When the bet bar is tapped
    Then i am presented with an expanded bet slip view
