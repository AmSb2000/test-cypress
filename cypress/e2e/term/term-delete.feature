@qa_release
Feature: term CRUD
  Scenario: delete - success

    When User submit "delete" "term"-"1" as "sazande" in rest
      | id*int |
      | <id>   |

    Then Check response data and statusCode <statusCode>
    Examples:
      | id | statusCode |
      | 1  | 200        |