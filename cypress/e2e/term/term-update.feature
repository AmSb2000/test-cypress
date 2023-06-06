@qa_release
Feature: term CRUD
  Scenario: update - success
    When User submit "update" "term"-"1" as <user> in rest
      | id*int | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <id>   | <title>      | <content>       | <tagId>           | <tagName>              |

    Then Check response data and statusCode <statusCode>
      | id*int | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <id>   | <title>      | <content>       | <tagId>           | <tagName>              |

    Examples:
      | user       | id | title        | content        | tagId | tagName        | statusCode |
      | "sazande"  | 1  | edited title | edited content | 2     | "notImportant" | 200        |
      | "admin"    | 1  | edited title | edited content | 2     | "notImportant" | 200        |
      | "customer" | 1  | edited title | edited content | 2     | "notImportant" | 403        |