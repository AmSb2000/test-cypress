@qa_release
Feature: User CRUD
  Scenario: delete - success
    When User submit "delete" "user"-"5" as "karmand" in rest
      | id*int |
      | <id>   |

    Then Check response data and statusCode <statusCode>
    Examples:
      | id | statusCode |
      | 1  | 200        |