Feature: Header Features


  @header
  Scenario Outline: Verify that correct header links are in place
    Given I am on the sportsbook
    When I look at the header
    Then I can see <Link>
    Examples:
      | Link                 |
      | Help                 |
      | Responsible Gambling |
      | Language Dropdown    |
      | Login                |
      | Join                 |



