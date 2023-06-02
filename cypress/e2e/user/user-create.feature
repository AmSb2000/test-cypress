@qa_release
Feature: User CRUD
    Scenario: create - success
        When User submit "create" "user"-"" as <user> in rest
            | username   | password   | realPerson.firstName | realPerson.lastName | realPerson.mobileNumber | realPerson.bankCardNumber | realPerson.birthDate | realPerson.person.nationalCode | realPerson.person.landlineNumber | realPerson.person.addresses.0.city.id*int | realPerson.person.addresses.0.reference | realPerson.person.addresses.0.postalCode |
            | <username> | <password> | <firstName>          | <lastName>          | <mobileNumber>          | <bankCardNumber>          | <birthDate>          | <nationalCode>                 | <landlineNumber>                 | <cityId>                                  | <reference>                             | <postalCode>                             |

        Then Check response data and statusCode <statusCode>
            | username   | realPerson.firstName | realPerson.lastName | realPerson.mobileNumber | realPerson.bankCardNumber | realPerson.birthDate | realPerson.person.nationalCode | realPerson.person.landlineNumber | realPerson.person.addresses.0.city.id*int | realPerson.person.addresses.0.reference | realPerson.person.addresses.0.postalCode |
            | <username> | <firstName>          | <lastName>          | <mobileNumber>          | <bankCardNumber>          | <birthDate>          | <nationalCode>                 | <landlineNumber>                 | <cityId>                                  | <reference>                             | <postalCode>                             |

        Examples:
            | user       | username | password | firstName | lastName  | mobileNumber | bankCardNumber   | birthDate                | nationalCode | landlineNumber | cityId | reference    | postalCode | statusCode |
            | "customer" | dev      | Dev@1234 | ali       | mortazavi | 09103334444  | 1111222233334444 | 2023-02-25T12:11:24.915Z | 0370717194   | 03448342317    | 1111   | 'onvar yazd' | 338233829  | 201        |
