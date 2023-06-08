@qa_release
Feature: User CRUD
  Scenario: update - success
    # When User submit term with method POST as sazande in rest
    When User submit "update" "user"-"1" as <user> in rest
      | id*int | username   | oldPassword   | password   | realPerson.id*int | realPerson.person.id*int | realPerson.person.nationalCode | realPerson.person.landlineNumber | realPerson.person.addresses.0.id*int | realPerson.person.addresses.0.reference | realPerson.person.addresses.0.postalCode | realPerson.person.addresses.0.city.id*int | realPerson.person.addresses.0.city.name | realPerson.person.addresses.0.city.province.id*int | realPerson.person.addresses.0.city.province.name | realPerson.person.addresses.0.city.province.slug | realPerson.person.addresses.0.city.slug | realPerson.person.addresses.0.id*int | realPerson.person.addresses.0.reference | realPerson.person.addresses.0.postalCode | realPerson.person.addresses.0.city.id*int | realPerson.person.addresses.0.city.name | realPerson.person.addresses.0.city.province.id*int | realPerson.person.addresses.0.city.province.name | realPerson.person.addresses.0.city.province.slug | realPerson.person.addresses.0.city.slug | realPerson.firstName  | realPerson.lastName  | realPerson.mobileNumber  | realPerson.bankCardNumber  | realPerson.birthDate  |
      | <id>   | <username> | <oldPassword> | <password> | <realPersonId>    | <realPersonPersonId>     | <realPersonPersonNationalCode> | <realPersonPersonLandlineNumber> | <realPersonPersonAddressesid>        | <realPersonPersonAddressesreference>    | <realPersonPersonAddressespostalCode>    | <realPersonPersonAddressescityId>         | <realPersonPersonAddressescityName>     | <realPersonPersonAddressescityProvinceId>          | <realPersonPersonAddressescityProvinceName>      | <realPersonPersonAddressescityProvinceSlug>      | <realPersonPersonAddressescitySlug>     | <realPersonPersonAddressesid>        | <realPersonPersonAddressesreference>    | <realPersonPersonAddressespostalCode>    | <realPersonPersonAddressescityId>         | <realPersonPersonAddressescityName>     | <realPersonPersonAddressescityProvinceId>          | <realPersonPersonAddressescityProvinceName>      | <realPersonPersonAddressescityProvinceSlug>      | <realPersonPersonAddressescitySlug>     | <realPersonFirstName> | <realPersonLastName> | <realPersonMobileNumber> | <realPersonBankCardNumber> | <realPersonBirthDate> |

    Then Check response data and statusCode <statusCode>
      | id*int | username   | realPerson.id*int | realPerson.person.id*int | realPerson.person.nationalCode | realPerson.person.landlineNumber | realPerson.person.addresses.0.reference | realPerson.person.addresses.0.postalCode | realPerson.person.addresses.0.city.id*int | realPerson.person.addresses.0.city.name | realPerson.person.addresses.0.city.province.id*int | realPerson.person.addresses.0.city.province.name | realPerson.person.addresses.0.city.province.slug | realPerson.person.addresses.0.city.slug | realPerson.person.addresses.0.id*int | realPerson.person.addresses.0.reference | realPerson.person.addresses.0.postalCode | realPerson.person.addresses.0.city.id*int | realPerson.person.addresses.0.city.name | realPerson.person.addresses.0.city.province.id*int | realPerson.person.addresses.0.city.province.name | realPerson.person.addresses.0.city.province.slug | realPerson.person.addresses.0.city.slug | realPerson.firstName  | realPerson.lastName  | realPerson.mobileNumber  | realPerson.bankCardNumber  | realPerson.birthDate  |
      | <id>   | <username> | <realPersonId>    | <realPersonPersonId>     | <realPersonPersonNationalCode> | <realPersonPersonLandlineNumber> | <realPersonPersonAddressesreference>    | <realPersonPersonAddressespostalCode>    | <realPersonPersonAddressescityId>         | <realPersonPersonAddressescityName>     | <realPersonPersonAddressescityProvinceId>          | <realPersonPersonAddressescityProvinceName>      | <realPersonPersonAddressescityProvinceSlug>      | <realPersonPersonAddressescitySlug>     | <realPersonPersonAddressesid>        | <realPersonPersonAddressesreference>    | <realPersonPersonAddressespostalCode>    | <realPersonPersonAddressescityId>         | <realPersonPersonAddressescityName>     | <realPersonPersonAddressescityProvinceId>          | <realPersonPersonAddressescityProvinceName>      | <realPersonPersonAddressescityProvinceSlug>      | <realPersonPersonAddressescitySlug>     | <realPersonFirstName> | <realPersonLastName> | <realPersonMobileNumber> | <realPersonBankCardNumber> | <realPersonBirthDate> |

    Examples:
      | user       | id | username | oldPassword | password | realPersonId | realPersonPersonId | realPersonPersonNationalCode | realPersonPersonLandlineNumber | realPersonPersonAddressesid | realPersonPersonAddressesreference           | realPersonPersonAddressespostalCode | realPersonPersonAddressescityId | realPersonPersonAddressescityName | realPersonPersonAddressescityProvinceId | realPersonPersonAddressescityProvinceName | realPersonPersonAddressescityProvinceSlug | realPersonPersonAddressescitySlug | realPersonPersonAddressesid | realPersonPersonAddressesreference           | realPersonPersonAddressespostalCode | realPersonPersonAddressescityId | realPersonPersonAddressescityName | realPersonPersonAddressescityProvinceId | realPersonPersonAddressescityProvinceName | realPersonPersonAddressescityProvinceSlug | realPersonPersonAddressescitySlug | realPersonFirstName | realPersonLastName | realPersonMobileNumber | realPersonBankCardNumber | realPersonBirthDate      | statusCode |
      | "admin"    | 1  | admin    | admin       | admin    | 1            | 1                  | 0370717194                   | 03538342317                    | 1                           | (یزد شهرک شکوهیه بلوار نصیر کوچه ۲۱ پلاک ۱۰) | 982398323                           | 1111                            | (یزد)                             | 31                                      | (یزد)                                     | (یزد)                                     | (یزد)                             | 1                           | (یزد شهرک شکوهیه بلوار نصیر کوچه ۲۱ پلاک ۱۰) | 982398323                           | 1111                            | (یزد)                             | 31                                      | (یزد)                                     | (یزد)                                     | (یزد)                             | sadegh              | habibian           | 09103334444            | 1111222233334444         | 2023-02-25T12:11:24.915Z | 200        |
      | "sazande"  | 1  | admin    | admin       | admin    | 1            | 1                  | 0370717194                   | 03538342317                    | 1                           | (یزد شهرک شکوهیه بلوار نصیر کوچه ۲۱ پلاک ۱۰) | 982398323                           | 1111                            | (یزد)                             | 31                                      | (یزد)                                     | (یزد)                                     | (یزد)                             | 1                           | (یزد شهرک شکوهیه بلوار نصیر کوچه ۲۱ پلاک ۱۰) | 982398323                           | 1111                            | (یزد)                             | 31                                      | (یزد)                                     | (یزد)                                     | (یزد)                             | sadegh              | habibian           | 09103334444            | 1111222233334444         | 2023-02-25T12:11:24.915Z | 403        |
      | "customer" | 2  | customer | admin       | admin    | 2            | 4                  | 0370713394                   | 03534442317                    |                             | (یزد شهرک شکوهیه بلوار نصیر کوچه ۲۱ پلاک ۱۰) | 982399323                           | 1111                            | (یزد)                             | 31                                      | (یزد)                                     | (یزد)                                     | (یزد)                             | 1                           | (یزد شهرک شکوهیه بلوار نصیر کوچه ۲۱ پلاک ۱۰) | 982398323                           | 1111                            | (یزد)                             | 31                                      | (یزد)                                     | (یزد)                                     | (یزد)                             | ahmad               | kabiri             | 09103333444            | 1111222233300444         | 2023-02-25T12:11:24.915Z | 200        |





