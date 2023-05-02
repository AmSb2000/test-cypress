Feature:edit company
    Scenario:success 
        Given User visit company page
        * User click ویرایش icon in list
        * User fill the form
        When User click ثبت تغییرات
        Then User see <name> 

    Examples:
    | name |
