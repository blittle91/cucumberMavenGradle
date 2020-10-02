@GSCOM-7
Feature: IP Based Redirect

  Additional information regarding the feature.

  Background: Ensure the tests are set up correctly
    Given a pre-requisite step definition

  Scenario Outline: A test relating to an IP based redirect

    Given <Head> and <Tails> = 2

    Examples:
      | Head | Tails |
      | 1    | 2     |
      | 2    | 4     |