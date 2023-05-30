@qa_release
Feature: term CRUD
  Scenario: delete - success
    # TODO: fix authorization for delete
    When User submit "delete" "term"-"1" as "customer" in rest
      | id*int |
      | <id>   |

    Then Check response data and statusCode <statusCode>
    Examples:
      | id | statusCode |
      | 1  | 200        |