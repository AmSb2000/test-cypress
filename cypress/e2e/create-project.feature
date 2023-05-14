Feature:create project
@web
    Scenario Outline: success
        Given User login as a admin 
        * User click "ایجاد پروژه" in menu
        * User fill the form in web
            | title | projectPropertyInfo*file | projectDeliveryDate | adress | tahlileEghtesadi | meterazh*int | zirbana*int | cancellationConditions | lateFees | finalFeature | implementationSteps.0.descreption | ImplementationSteps.0.date | description |
            |<title>|         <file>           |<projectDeliveryDate>|<adress>|<tahlileEghtesadi>| <meterazh>   | <zirbana>   |<cancellationConditions>|<lateFees>|<finalFeature>|<implementationStepsDescreption>   | <ImplementationStepsDate>  |<description>|                                                                                                               
        When User click "ثبت" button in web
        Then User <action> "ثبت واحد"
        Examples:
            | title | file | projectDeliveryDate | address | tahlileEghtesadi | meterazh | zirbana | cancellationConditions | lateFees | finalFeature | implementationStepsDescription | ImplementationStepsDate | description | action | 
            |       |      |                     |         |                  |          |         |                        |          |              |                                |                         |                    |  see   |
