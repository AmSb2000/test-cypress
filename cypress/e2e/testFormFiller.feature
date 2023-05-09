Feature:test form filler 
    Scenario Outline:fill form and click button 
        Given User visit home page in web
        # * User upload file in form
        * User fill the form
        | arrFile.0.file4*file|
        | <file>    |
        # Given User login as a admin
        When User click "send" button in web

        Examples:
        | file |
        | /home/ali/bar.txt|
        
