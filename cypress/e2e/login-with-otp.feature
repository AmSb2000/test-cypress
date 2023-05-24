Feature:login
    Background: User visit site
    Scenario:success login  
        Given User visit login page in web
        * User fill number form
            | phoneNumber*int |
            |     <phone>     |  
        * User click تایید شمارهbutton 
        * User fill otpCode form 
            | otp*int   |
            |           |
        When User click ورود به حساب button 
        Then User should see داشبورد 


      Examples:
        | phone |
    Scenario:fail login
        Given User visit login page in web
        * User fill number form
            | phoneNumber*int |
            |    <phone>      |
        * User click تایید شمارهbutton
        * User fill otpCode form 
            | otp*int   |
            |           |        
        Then User should see ورود به حساب
     Examples:
        | phone |
