@qa_release
Feature: news CRUD
  Scenario: full - success
    When User submit "full" "news"-"1" as <user> in rest
    Then Check response data and statusCode <statusCode>
      | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <title>      | <content>       | <tagId>           | <tagName>              |
    Examples:
      | user       | title      | content      | tagId | tagName  | statusCode |
      | "customer" | news title | news content | 1     | firstTag | 200        |
