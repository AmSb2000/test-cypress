Feature:sign up
    Scenario:success sign up 
        Given User visit signup page in web
        Given User fill signup form
            | name*string | nationalCode*int | phoneNumber*int |
            |             |                  |                 |
        When User click "ثبت نام" button in web 
        Then User should see ورود به حساب
    

    