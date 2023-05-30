@qa_release
Feature: term CRUD
  Scenario: full - success
    # When User submit term with method POST as sazande in rest
    When User submit "full" "term"-"1" as "customer" in rest
    Then Check response data and statusCode <statusCode>
      | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <title>      | <content>       | <tagId>           | <tagName>              |
    Examples:
      | title      | content      | tagId | tagName  | statusCode |
      | term title | term content | 1     | firstTag | 200        |
      