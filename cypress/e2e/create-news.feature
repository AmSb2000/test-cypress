Feature: create news
    Scenario Outline: success
       Given User login as a sazande
        * User click "اخبار" in menu
        * User click "اضافه کردن خبر" button in web
        * User fill create-news form in web
            | title*string |  category.0.name | category.1.name |  description  |
            |  <title>     |    <category1>   |  <category2>    | <description> |
        When User click "ثبت" button in web
        Then User should see empty inputs in web
            Examples:
            | title | category1| category2 | description |

    


