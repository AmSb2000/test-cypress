Feature: Add game to cart
    Scenario: successfuly add game to cart
        Given User visit steam website
        * User search "fifa"
        * User choose the first item
        When User click add to cart 
        Then User should see the game in his carts