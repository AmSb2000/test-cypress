Feature: buy shares
    Scenario:success
        Given User login as a User
        * User visit projects page
        * User click مشاهده in list
        * User click لیست واحد های موجود button
        * User click see icon in list 
        * User click خرید سهم button 
        * User fill metrage widget
        | numberRange |
        |<numberRange>|
        * User click پرداخت button
        When User click لیست پروژه های من button 
        Then User see <name>
        Examples:
        | name | numberRange |