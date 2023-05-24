Feature: create question
    Scenario Outline: success 
    Given User login as a sazande
    * User click "سوالات متداول" in menu
    * User click "ایجاد سوالات متدوال" button in web
    * User fill create-question form in web
    | category.0.name | title | text | answer | 
    When User click "ثبت" button in web
    Then User should see empty inputs in web