Feature:login
    Background: User visit site
    Scenario:success login  
        Given User visit login page in web
        * User fill number form
            | phoneNumber*int |
            |     <phone>     |  
        * User click تایید شمارهbutton 
        * User fill otpCode form in web
            | otp*int   |
            |           |
        When User click ورود به حساب button 
        Then User should see داشبورد 


      Examples:
        | phone |

