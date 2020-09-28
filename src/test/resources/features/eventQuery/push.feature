Feature: Push updates for prices

    Tags: Unit, Integration, System, XF, Manual, Compliance, Pending

    @GSFE-268-1 @Unit
    Scenario: Verify that the Accept Changes button appears on the bet slip when a price change is received

    @GSFE-268-2 @Unit
    Scenario: Verify that the Price Change message appears on the opportunity level when a price change is received

    @GSFE-268-3 @Integration @Pending @Manual
    Scenario: Verify that the price is updated in the UI when the price is increased

    @GSFE-268-4 @Integration @Pending @Manual
    Scenario: Verify that the price is updated in the UI when the price is decreased

    @GSFE-268-5 @Integration @System @Pending @Manual
    Scenario: Verify that the price is updated in the UI for singles
        Given I am logged out
        And I have a single opportunity added to the bet slip
        When a price change is received
        Then the new price is reflected in the UI
        And the price update message appears on the opportunity level
        And the accept changes button appears on the bet slip
        And I am unable to log in without accepting the price change

    @GSFE-268-6 @Integration @System @Pending @Manual
    Scenario: Verify that the bet can be placed when the price changes
        Given I am logged in
        And I have a single opportunity added to the bet slip
        When a price change is received
        And I accept the price change
        Then I am able to place the bet
        And I can see the price change reflected in My Bets

    # this scenario is covered in @GSFE-268-5
    @GSFE-268-7 @Integration @Pending @Manual
    Scenario: Verify that price changes are reflected in My Bets after the bet is struck

    # this scenario is covered in @GSFE-268-5
    @GSFE-268-8 @Integration @Pending @Manual
    Scenario: Verify that the user is able to place a single bet after a price change is accepted

    @GSFE-268-9 @Integration @System @Pending @Manual
    Scenario: Verify that the price is updated in the UI for multiples
        Given I am logged in
        And I have a multiple opportunity added to the bet slip
        When a price change is received
        Then the new price is reflected in the UI
        And the price update message appears on the opportunity level
        And the accept changes button appears on the bet slip
        And I am unable to place the bet without accepting the price changes

    # this scenario is covered in @GSFE-268-8
    @GSFE-268-10 @SystemIntegration @Pending @Manual
    Scenario: Verify that the user is unable to place a bet without accepting price changes

    @GSFE-268-11 @Integration @Pending @Manual
    Scenario: Verify that the user can remove the leg that has received price changes from the accumulator and still place the bet
        Given I am logged in
        And I have a multiple opportunity added to the bet slip
        And a price change is received for one leg
        And the price change is reflected in the UI
        When I remove the leg that has received a price change
        Then I am able to place the bet

    @GSFE-268-12 @Integration @Pending @Manual
    Scenario: Verify that the user is able to place a bet after removing the price changed opportunity
        Given I am logged in
        And I have more than one single opportunity added to the bet slip
        And a price change is received for one single opportunity
        And the price change is reflected in the UI
        When I remove the single opportunity that has received a price change
        Then I am able to place the bets for the remaining single opportunities
