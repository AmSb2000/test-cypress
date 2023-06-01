@qa_release
Feature: term CRUD
  Scenario: full - success
    When User submit "full" "term"-"1" as <user> in rest
    Then Check response data and statusCode <statusCode>
      | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <title>      | <content>       | <tagId>           | <tagName>              |
    Examples:
      | user       | title      | content      | tagId | tagName  | statusCode |
      | "customer" | term title | term content | 1     | firstTag | 200        |
