Feature:login
  Scenario Outline:success login
    When User login as <user> in rest
    Then check response status <statusCode>
    Examples:
      | user    | statusCode |
      | admin   | 201        |
      | sazande | 201        |
      | karmand | 201        |