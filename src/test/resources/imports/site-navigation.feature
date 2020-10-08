Feature: Website navigation

  Tags: Unit, Integration, System, XF, Manual, Compliance, Pending

  Scenario: Navigate to a competitions page using the A-Z menu
    Given I am on the "home" page
    When I open the AZ menu
    And I click on "Football" in the A-Z menu
    Then I am redirected to the "Football" competitions page

  Scenario: Navigate to an event page
    Given I am on a random "football competition"
    When I click on the first available event
    Then I am redirected to the "Event" page

  @Pending
  Scenario: Navigate to a results page
    Given I am on the "football sport" page
    When I select the "results" tab
    Then I am redirected to the "Results" page

  @Unit @System @Manual @Pending
  Scenario: Navigate to an event results page
    Given I am on the "results" page
    When I select the first event
    Then I am redirected to the "event results" page

  Scenario: Navigate to the outrights page
    Given I am on a random "football competition"
    When I select the "outrights" tab
    Then I am redirected to the "Outrights" page

  Scenario: Navigate to My Bets when not logged in
    Given I am on the "home" page
    When I click on "My Bets" in the Quick Links Menu
    And I am redirected to the "My Bets" page
    Then I see the log in information

  Scenario: Navigate to My Open Bets when logged in
    Given I am on the "home" page
    And I am logged in
    When I click on "My Bets" in the Quick Links Menu
    And I am redirected to the "My Bets" page
    Then I can see my "open" bets

  Scenario: Navigate to My Settled Bets when logged in
    Given I am on the "home" page
    And I am logged in
    When I click on "My Bets" in the Quick Links Menu
    And I am redirected to the "My Bets" page
    And I select the "Settled" tab
    Then I can see my "settled" bets

  @GSFE-640-1 @Unit
  Scenario Outline: Verify Results tabs and Results page on Competition page
    Examples:
      | Page        | QueryParam               | Expected Result                  |
      | Competition | True                     | Results tab & widget visible     |
      | Competition | False                    | Results tab & widget not visible |
      | Competition | Empty                    | Results tab & widget not visible |
      | Competition | Gibberish (skldnasjkdnw) | Results tab & widget not visible |

  @Pending @GSFE-640-12 @Unit
  Scenario Outline: Verify Results tabs and Results page on Coupons page
    Examples:
      | Page    | QueryParam               | Expected Result                  |
      | Coupons | True                     | Results tab & widget visible     |
      | Coupons | False                    | Results tab & widget not visible |
      | Coupons | Empty                    | Results tab & widget not visible |
      | Coupons | Gibberish (skldnasjkdnw) | Results tab & widget not visible |

  @GSFE-547-2 @Unit @Manual @Pending
  Scenario Outline: Verify event information is available on Event Results page
    Given I am on a random "event results" page
    Then I can see the "<event information>"

    Examples:
      | Information |
      | Event Name  |
      | Event Time  |
      | Event Date  |
