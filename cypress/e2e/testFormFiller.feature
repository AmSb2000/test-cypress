Feature:test form filler 
    Scenario:fill form and click button 
        Given User visit home page in web
        Given User fill the form
        |id*int|name*string|
        | <id> | <name>    |
        # Given User login as a admin
        When User click send button

        Examples:
        | id | name |
        |  1 | zzzzz|
        
