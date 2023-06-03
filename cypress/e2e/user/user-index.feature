@qa_release
Feature: User CRUD
  Scenario: index - success
    When User submit "index" "user"-"" as <user> in rest
    Then Check response data and statusCode <statusCode>
      | username   | realPerson.firstName | realPerson.lastName | realPerson.mobileNumber | realPerson.person.nationalCode | realPerson.person.landlineNumber | groups.0.id | groups.0.company.id |
      | <username> | <firstName>          | <lastName>          | <mobileNumber>          | <nationalCode>                 | <landlineNumber>                 | <groupId>   | <companyId>         |
    Examples:
      | user      | username | password | firstName | lastName | mobileNumber | nationalCode | landlineNumber | groups.0.id | groups.0.company.id | statusCode |
      | "karmand" | karmand  | admin    | gholam    | amini    | 0914653428   | 0370667552   | 0353540012     | 3           | 2                   | 200        |