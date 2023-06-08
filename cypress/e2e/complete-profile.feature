Feature: complete profile
    @web
    Scenario Outline:success
        Given User login as a user
        * User visit complete_profile page
        * User fill completeIdentityInformation form in web
            | realPerson.firstname*string |realPerson.lastname*string | person.nationalCode*int | profile*file | realPerson.mobileNumber*int | realPerson.birthDate |
            |  <firstname>                |    <lastname>             |        <nationalCode>   |   <profile>  |           <mobileNumber>    |     <birthDate>      |
        * User fill completeContactInformation form in web
            | realPerson.person.addresses.0.reference | realPerson.person.addresses.0.city.id |realPerson.person.addresses.0.city.slug |realPerson.person.addresses.0.city.name|realPerson.person.addresses.0.city.province.id|realPerson.person.addresses.0.city.province.name| realPerson.person.addresses.0.city.province.slug| realPerson.person.addresses.postalCard | person.landlineNumber*int | 
        * User fill completeBankInformation form in web
            | realPerson.bankCardNumber *int | realPerson.shabaNumber*int |
            |  <bankCardNumber>              |        <shabaNumber>       | 
        When User click "ثبت" button in web
        Then User should see <name> in web
        Examples:
        | firstname | lastname | nationalCode | profile | mobileNumber | birthDate | bankCardNumber | shabaNumber | 
