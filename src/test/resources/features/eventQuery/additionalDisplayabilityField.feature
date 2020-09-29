Feature: Include the displayability of each event on the event query

  Additional information regarding the feature.

  Background: Ensure the tests are set up correctly
    Given a pre-requisite step definition

  Scenario Outline: Another unique test name

    Given <Head> and <Tails> = 2

    Examples:
      | Head | Tails |
      | 1    | 2     |
      | 2    | 4     |

  Scenario: Assert that when the event endpoint is queried, the displayability is set to true
    Given 1 + 1 = 2
    Then this scenario is true

  Scenario: Assert that when the event endpoint is queried, the displayability is set to false
    Given 1 + 1 = 2
    Then this scenario is true