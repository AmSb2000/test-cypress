Feature: create compony
    Scenario:success 
        Given User login as a admin
        * User visit compony page
        * User click ثبت دامنه button
        * User fill the form
        | name*string | registerNumber*int | nationalId*int | code*int | phone*int | licenseNumber*int | address*strin  | link*string |
        |  <name>     |  <registerNumber>  |  <nationalId>  | <code>   |  <phone>  |  <licenseNumber>  |  <address>     |  <link>     |
        * User fill the widget 
        |  day |
        |<date>|
        * User click ثبت button
        * User visit compony page
        * User click edit button
        * User fill the widget
        | selectSingle | selectSingle |
        When User click ثبت تغییرات
        Then User see <name> 


        Examples:
        | name | registerNumber | nationalId | code | phone | licenseNumber | address | date | site | user | role |


    # Scenario:fail