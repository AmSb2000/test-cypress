Feature:login
    Background: User visit site
    Scenario:success login  
        Given User visit login page in web
        * User fill login form
            | phoneNumber*int |  password |
            |   <phone>       | <password>|
        When User click ورود به حساب button 
        Then User should see داشبورد 

      Examples:
        | phone | password |
    Scenario:fail login
        Given User visit login page in web
        * User fill login form
            | phoneNumber*int |  password |
            |      <phone>    | <password>|
        When User click ورود به حساب button
        Then User should see ورود به حساب

    Examples:
        | phone | password |
