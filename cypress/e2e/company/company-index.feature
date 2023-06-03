@qa_release
Feature: FAQ CRUD
  Scenario: index - success
    When User submit "index" "company"-"" as <user> in rest
    Then Check response data and statusCode <statusCode>
      | id*int | fullName   | domain   | person.id*int | person.nationalCode  | person.landlineNumber  |
      | <id>   | <fullName> | <domain> | <personId>    | <personNationalCode> | <personLandlineNumber> |
    Examples:
      | user       | id | fullName                       | domain       | personId | personNationalCode | personLandlineNumber | statusCode |
      | "customer" | 1  | (هوشمندپردازان یکتا کویر آسیا) | hyvatech.com | 1        | 14009057833        | 03538342317          | 200        |
