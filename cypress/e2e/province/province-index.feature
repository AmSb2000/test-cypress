@qa_release
Feature: province CRUD
  Scenario: index - success
    # When User submit term with method POST as sazande in rest
    When User submit "index" "province"-"" as "customer" in rest
    Then Check response data and statusCode <statusCode>
      | id*int | name*string | slug*string |
      | <id>   | <name>      | <slug>      |
    Examples:
      | id | name             | slug             | statusCode |
      | 1  | (آذربایجان شرقی) | (آذربایجان-شرقی) | 200        |