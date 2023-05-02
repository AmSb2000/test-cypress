Feature: create news
    Scenario Outline: success
        Given User login as a User
        * User visit news page
        * User click اضافه کردن خبر button
        * User fill the widget
            | title |
            |<title>|
        * User fill the widget 
            | selectArray |
            | <category>  |

        * User fill the widget
            | ckEditor |
            | <content>|
        When User click اضافه کردن button
        Then User see <title>

        Examples:
            | title | category | content |
    # Scenario: fail

    

