Feature: Native Login

  Scenario: Valid Log in with Stars ID
    Given I have opened the Pokerstars sports App
    When I select <Login> in the header bar
    And enter valid Stars ID and Password
    And I tap on the Login button
    Then I am logged into an account
    And my account balance is displayed

  Scenario: Valid Log-in with Email Address.
    Given I have opened the Pokerstars sports App
    When I select <Login> in the header bar
    And enter valid email address and Password
    And I tap on the Login button
    Then I am logged into an account
    And my account balance is displayed

  Scenario: Valid Log-in with saved credentials
    Given I have opened the Pokerstars sports App
    When I select <Login> in the header bar
    And login page displayed with valid Stars ID and Password
    And I tap on the Login button
    Then I am logged into an account and my account balance is displayed

  Scenario: Invalid Log-in with Stars ID
    Given I have opened the Pokerstars sports App
    When I select <Login> in the header bar
    And enter invalid Stars ID and valid Password
    And I tap on the Login button
    Then Log-in shouldn't be successful

  Scenario: Invalid Log-in with an email address
    Given I have opened the Pokerstars sports App
    When I select <Login> in the header bar
    And enter invalid email and valid Password
    And I tap on the Login button
    Then Log-in shouldn't be successful

  Scenario: Invalid Log-in with Stars ID
    Given I have opened the Pokerstars sports App
    When I select <Login> in the header bar
    And enter a valid Stars ID and invalid Password
    And I tap on the Login button
    Then Log-in shouldn't be successful

  Scenario: Invalid Log-in with an email address
    Given I have opened the Pokerstars sports App
    When I select <Login> in the header bar
    And enter a valid email and invalid Password
    And I tap on the Login button
    Then Log-in shouldn't be successful


