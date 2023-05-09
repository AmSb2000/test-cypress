Feature:create project
@web
    Scenario Outline: success
        Given User login as a admin
        * User click "ایجاد پروژه" in menu
        * User fill the form 
            | title | projectPropertyInfo*file | projectDeliveryDate | adress | tahlileEghtesadi | meterage*int | substruction*int | cancellationConditions | lateFees | finalFeature | implementationSteps.0.descreption | ImplementationSteps.0.date | generalDescription |
        When User click "ثبت" button in web
        Then User <action> "ثبت واحد"
        Examples:
            | title | file | projectDeliveryDate | address | tahlileEghtesadi | meterage*int | substruction*int | cancellationConditions | lateFees | finalFeature | implementationSteps.0.description | ImplementationSteps.0.date | generalDescription | action | 
            |       |      |                     |         |                  |              |                  |                        |          |              |                                   |                            |                    |  see   |
