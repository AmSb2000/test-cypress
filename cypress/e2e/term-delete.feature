Feature: term CRUD
  Scenario: delete - success
    # When User submit term with method POST as sazande in rest
    When User submit "delete" "term"-"1" as "customer" in rest
      | id*int |
      | <id>   |

    Then Check response data and statusCode <statusCode>
    Examples:
      | id | statusCode |
      | 1  | 200        |