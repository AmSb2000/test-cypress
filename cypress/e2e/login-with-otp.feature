Feature:login
    Background: User visit site
    Scenario:success login  
        Given User visit ?? page in web
        * User fill number form
            | number*int |
            |            |  
        * User click تایید شمارهbutton 
        * User fill otpCode form 
            | otp*int   |
            |            |
        When User click ورود به حساب button 
        Then User should see داشبورد 


    Scenario:fail login
        Given User visit ?? page in web
        * User fill number form
            | number*int |
            |            |
        * User click تایید شمارهbutton
        * User fill otpCode form 
            | otp*int   |
            |            |        
        Then User should see ورود به حساب

