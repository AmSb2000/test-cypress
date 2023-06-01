@qa_release
Feature: FAQ CRUD
  Scenario: update - success
    When User submit "update" "faq"-"1" as <user> in rest
      | id*int | title*string | question* string | answer*string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <id>   | <title>      | <question>       | <answer>      | <tagId>           | <tagName>              |

    Then Check response data and statusCode <statusCode>
      | id*int | title*string | question* string | answer*string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <id>   | <title>      | <question>       | <answer>      | <tagId>           | <tagName>              |

    Examples:
      | user       | id | title               | question        | answer        | tagId | tagName        | statusCode |
      | "sazande"  | 1  | edited title of FAQ | edited question | update answer | 2     | "notImportant" | 200        |
      | "admin"    | 1  | edited title of FAQ | edited question | update answer | 2     | "notImportant" | 200        |
      | "customer" | 1  | edited title of FAQ | edited question | update answer | 2     | "notImportant" | 403        |