Feature: term CRUD
  Scenario: update - success
    # When User submit term with method POST as sazande in rest
    When User submit "update" "term"-"1" as "admin" in rest
      | id*int | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <id>   | <title>      | <content>       | <tagId>           | <tagName>              |

    Then Check response data and statusCode <statusCode>
      | id*int | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <id>   | <title>      | <content>       | <tagId>           | <tagName>              |

    Examples:
      | id | title        | content        | tagId | tagName        | statusCode |
      | 1  | edited title | edited content | 2     | "notImportant" | 200        |