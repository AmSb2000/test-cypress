@qa_release
Feature: FAQ CRUD
  Scenario: update - success
    # When User submit term with method POST as sazande in rest
    When User submit "update" "faq"-"1" as "sazande" in rest
      | id*int | title*string | question* string | answer*string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <id>   | <title>      | <question>       | <answer>      | <tagId>           | <tagName>              |

    Then Check response data and statusCode <statusCode>
      | id*int | title*string | question* string | answer*string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <id>   | <title>      | <question>       | <answer>      | <tagId>           | <tagName>              |

    Examples:
      | id | title               | question        | answer        | tagId | tagName        | statusCode |
      | 1  | edited title of FAQ | edited question | update answer | 2     | "notImportant" | 200        |