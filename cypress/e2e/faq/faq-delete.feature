@qa_release
Feature: FAQ CRUD
  Scenario: delete - success

    When User submit "delete" "faq"-"1" as "sazande" in rest
      | id*int |
      | <id>   |

    Then Check response data and statusCode <statusCode>
    Examples:
      | id | statusCode |
      | 1  | 200        |