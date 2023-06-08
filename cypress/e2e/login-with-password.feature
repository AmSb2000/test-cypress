Feature:login
    Background: User visit site
    @web
    Scenario Outline:success login  
        Given User visit login page in web
        * User fill login form
            | phoneNumber*int |  password |
            |   <phone>       | <password>|
        When User click "ورود به حساب" button 
        Then User <ation> "داشبورد"

      Examples:
        | phone | password | action |
        |       |          |  see   |
