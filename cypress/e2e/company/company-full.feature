@qa_release
Feature: Company CRUD
  Scenario: full - success
    When User submit "full" "company"-"1" as <user> in rest
    # Then User wait for '300' secound
    Then Check response data and statusCode <statusCode>
      | id*int | fullName   | domain   | registerationNumber   | economicCode   | engineeringLicenseNumber   | person.id*int | person.nationalCode  | person.landlineNumber  |
      | <id>   | <fullName> | <domain> | <registerationNumber> | <economicCode> | <engineeringLicenseNumber> | <personId>    | <personNationalCode> | <personLandlineNumber> |

    Examples:
      | user       | position | id | fullName                       | domain       | registerationNumber | economicCode | engineeringLicenseNumber | personId | personNationalCode | personLandlineNumber | statusCode |
      | "customer" | response | 1  | (هوشمندپردازان یکتا کویر آسیا) | hyvatech.com | 1                   | 411658531384 | 1                        | 1        | 14009057833        | 03538342317          | 200        |




