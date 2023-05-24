Feature:test form filler 
    Scenario Outline:fill form and click button 
        Given User visit compony_list page in web
        # * User upload file in form
        # * User fill the form in web
        # | arrFile.0.file4*file|
        # arrFile.0.file5*file | arrFile.1.file5*file | 
        # name*string | number*int | file*file |
        # | <file>    |
        #  <file> | <file2> |
        #  'ajafkaj' | 886868 | <file> |
        # Given User login as a admin
        # When User click "send" button in web    
        # Then User see empty inputs in web
        Then User should see columns in list in web  
            | دامنه | شماره تلفن ثابت | شماره ثبت | نام شرکت |
            # | domain |
            # | hfahjjh|
        Examples:
        | file | file2 |
        | /home/ali/bar.txt| /home/ali/Downloads/images.jpeg |
        
