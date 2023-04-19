Feature:edit company
    Scenario:success 
        Given User visit company page
        * User click edit button
        * User fill the widget
        | selectSingle | selectSingle |
        When User click ثبت تغییرات
        Then User see <name> 

    Examples:
    | name |
