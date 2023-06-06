@qa_release
Feature: FAQ CRUD
  Scenario: delete - success
    When User submit "delete" "faq"-"1" as <user> in rest
      | id*int |
      | <id>   |

    Then Check response data and statusCode <statusCode>
    Examples:
      | user       | id | statusCode |
      | "sazande"  | 1  | 200        |
      | "admin"    | 1  | 200        |
      | "customer" | 1  | 403        |