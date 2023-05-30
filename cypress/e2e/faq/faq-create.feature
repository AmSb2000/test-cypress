@qa_release
Feature: FAQ CRUD
    Scenario: create - success
        When User submit "create" "faq"-"" as "sazande" in rest
            | title*string | question* string | answer*string | tags.0.tag.id*int | tags.0.tag.name*string |
            | <title>      | <question>       | <answer>      | <tagId>           | <tagName>              |

        Then Check response data and statusCode <statusCode>
            | title*string | question* string | answer*string | tags.0.tag.id*int | tags.0.tag.name*string |
            | <title>      | <question>       | <answer>      | <tagId>           | <tagName>              |

        Examples:
            | title        | question | answer | tagId | tagName        | statusCode |
            | title of FAQ | question | answer | 1     | "notImportant" | 201        |