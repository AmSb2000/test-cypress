@qa_release
Feature: news CRUD
  Scenario: delete - success
    When User submit "delete" "news"-"1" as <user> in rest
      | id*int |
      | <id>   |

    Then Check response data and statusCode <statusCode>
    Examples:
      | user       | id | statusCode |
      | "sazande"  | 1  | 200        |
      | "admin"    | 1  | 200        |
      | "customer" | 1  | 403        |