@qa_release
Feature: term CRUD
    Scenario: create - success
        When User submit "create" "term"-"" as <user> in rest
            | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
            | <title>      | <content>       | <tagId>           | <tagName>              |
        Then Check response data and statusCode <statusCode>
            | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
            | <title>      | <content>       | <tagId>           | <tagName>              |
        Examples:
            | user       | title           | content           | tagId | tagName        | statusCode |
            | "sazande"  | "title of term" | "content of term" | 1     | "notImportant" | 201        |
            | "admin"    | "title of term" | "content of term" | 1     | "notImportant" | 201        |
            | "customer" | "title of term" | "content of term" | 1     | "notImportant" | 403        |