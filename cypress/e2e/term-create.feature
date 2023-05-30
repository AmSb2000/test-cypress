@qa_release
Feature: term CRUD
    Scenario: create - success
        # When User submit term with method POST as sazande in rest
        When User submit "create" "term"-"" as "sazande" in rest
            | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
            | <title>      | <content>       | <tagId>           | <tagName>              |
        Then Check response data and statusCode <statusCode>
            | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
            | <title>      | <content>       | <tagId>           | <tagName>              |
        Examples:
            | title           | content           | tagId | tagName        | statusCode |
            | "title of term" | "content of term" | 1     | "notImportant" | 201        |