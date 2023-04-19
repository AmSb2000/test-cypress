Feature:sign up
    Scenario:success sign up 
        Given User visit signup page in web
        Given User fill signup form
            | name*string | nationalCode*int | phoneNumber*int |
            |             |                  |                 |
        When User click ثبت نام 
        Then User should see ورود به حساب
    
    Scenario:fail sign up with wrong national code 
        Given User visit signup page in web
        Given User fill signup form
            | name*string | nationalCode*int | phoneNumber*int |
            |             |                  |                 |
        When User click ثبت نام 
        Then User should see ثبت نام

    