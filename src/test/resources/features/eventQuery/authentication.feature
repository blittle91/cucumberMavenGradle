Feature: Login/Logout

  Tags: Unit, Integration, System, XF, Manual, Compliance

  Scenario: Login via the RAM header
    Given I am on the "home" page
    When I click the Login button in the RAM header
    And I enter my credentials
    And I click the Login button in the popup
    Then I am successfully logged in

  Scenario: Login via the Bet Slip
    Given I am on a random "football event"
    When I select the "home" outcome
    And I open the bet slip
    And I click the "Login to Bet" button
    And I enter my credentials
    And I click the Login button in the popup
    Then I am successfully logged in

  Scenario: Login via My Bets
    Given I am on the "my bets" page
    When I click the Login button in the My Bets page
    And I enter my credentials
    And I click the Login button in the popup
    Then I am successfully logged in

  Scenario: Logout via the RAM header
    Given I am on the "home" page
    And I am logged in
    When I click the Account button in the RAM header
    And I click the Logout link
    And I click the "Logout" button
    Then I am successfully logged out