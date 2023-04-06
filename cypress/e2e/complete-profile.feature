Feature: complete profile
    Scenario:success 
        Given User login as a user
        * User visit profile page
        * User click تکمیل پروفایل button
        * User fill the form
            | address | phone | profile | accountNumber |
            |<address>|<phone>|<profile>|<accountNumber>|
        When User click ثبت button
        Then User should see <phone>
    Examples:
    | address | phone | profile | accountNumber |
