Feature: Footer Features


  @footer @compliance
  Scenario Outline: Check the correct links are in place for -> How To
    Given I am on the Sportsbook
    When I look at the footer section How To
    Then I can see <Link>
    Examples:
      | Link                   |
      | Betting with Us        |
      | Sports FAQ             |
      | Bet Types              |
      | Market Descriptions    |
      | Sports Rules           |
      | Deposits & Withdrawals |
      | Maximum Payouts        |
      | Help                   |
      | About Us               |


  @footer @compliance
  Scenario Outline: Check the correct links are in place for -> Being Responsible
    Given I am on the Sportsbook
    When I look at the footer section Being Responsible
    Then I can see <Link>
    Examples:
      | Link                 |
      | Responsible Gambling |
      | Gambling Therapy     |


  @footer @compliance
  Scenario Outline: Check the correct links are in place for -> Legal
    Given I am on the Sportsbook
    When I look at the footer section Legal
    Then I can see <Link>
    Examples:
      | Link                         |
      | Terms of Service             |
      | Privacy Policy               |
      | Security of Account Balances |




