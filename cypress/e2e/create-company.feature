Feature: create company
    @web
    Scenario Outline:success 
        Given User login as a admin
        * User visit company page in web
        * User click "ثبت دامنه" button in web
        Given User fill the form in web
        | name | shomare_sabt | shenase_meli | parvane_nesam_mohandesi | code_eghtesadi | telephone | domain | address |
        |<name>|<shomare_sabt>|<shenase_meli>|<parvane_nesam_mohandesi>|<code_eghtesadi>|<telephone>|<domain>|<address>|
        When User click "ثبت" button in web
        Then User <action> <name> 


        Examples:
        | name | shomare_sabt | shenase_meli | parvane_nesam_mohandesi | code_eghtesadi | telephone | domain | address | action |
        |      |              |              |                         |                |           |        |         |   see  |
        |      |              |              |                         |                |           |        |         |dont see|

    # Scenario:fail