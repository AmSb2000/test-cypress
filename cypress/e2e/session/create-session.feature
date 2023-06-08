@qa_release
Feature: create session
  Scenario Outline:success
    When User login as <user> in rest
    Then Check response data and statusCode <statusCode>
    Examples:
      | user     | statusCode |
      | admin    | 201        |
      | sazande  | 201        |
      | karmand  | 201        |
      | nazer    | 201        |
      | customer | 201        |
      | notLogin | 403        |