Feature:login
    Background: User visit site
    Scenario:success login  
        Given User visit login page in web
        * User fill login form
            | number*int |  password |
            |            |           |
        When User click ورود به حساب button 
        Then User should see داشبورد 


    Scenario:fail login
        Given User visit login page in web
        * User fill login form
            | number*int |  password |
            |            |           |
        When User click ورود به حساب button
        Then User should see ورود به حساب

