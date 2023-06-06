@qa_release
Feature: company CRUD
  Scenario: delete - success
    When User submit "delete" "company"-"2" as "admin" in rest
      | id*int |
      | <id>   |
    # Then User wait for '400' secound
    Then Check response data and statusCode <statusCode>
    Examples:
      | id | statusCode |
      | 2  | 200        |