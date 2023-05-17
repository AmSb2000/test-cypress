Feature:test form filler 
    Scenario Outline:fill form and click button 
        Given User visit form_builder page in web
        # * User upload file in form
        * User fill the form in web
        | arrFile.0.file4*file|
        # arrFile.0.file5*file | arrFile.1.file5*file | 
        # name*string | number*int | file*file |
        | <file>    |
        #  <file> | <file2> |
        #  'ajafkaj' | 886868 | <file> |
        # Given User login as a admin
        When User click "send" button in web

        Examples:
        | file | file2 |
        | /home/ali/bar.txt| /home/ali/Downloads/images.jpeg |
        
