Feature: Checking the availability of the game 
    Scenario: check by search item
    Given User visist steam website
    * User search "fifa"
    When User choose the first item
    Then User should see the price 