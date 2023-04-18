Feature: create company
    Scenario:success 
        Given User login as a admin
        * User visit company page
        * User click ثبت دامنه button
        * User fill the form
        | name*string | registerNumber*int | nationalId*int | code*int | phone*int | licenseNumber*int | address*string  | link*string |
        |  <name>     |  <registerNumber>  |  <nationalId>  | <code>   |  <phone>  |  <licenseNumber>  |  <address>     |  <link>     |
        * User fill the widget 
        |  day |
        |<date>|
        When User click ثبت button
        Then User see <name> 


        Examples:
        | name | registerNumber | nationalId | code | phone | licenseNumber | address | date | site | user | role |


    # Scenario:fail