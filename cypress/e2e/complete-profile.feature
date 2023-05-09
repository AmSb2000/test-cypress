Feature: complete profile
    @web
    Scenario Outline:success 
        Given User login as a user
        * User visit profile page in web
        * User click "تکمیل پروفایل" button in web
        * User fill the form
            | address | phone | profile | accountNumber |
            |<address>|<phone>|<profile>|<accountNumber>|
        When User click "ثبت" button in web
        Then User <action> <phone>
    Examples:
    | address | phone | profile | accountNumber | id | action |
    |         |       |         |               |    | see    |
    

