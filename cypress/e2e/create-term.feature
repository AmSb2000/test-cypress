Feature: create term
    Scenario: success
        Given User login as a User
        When User submit term with method POST in rest
            | title*string | content* string | tags.0.tag.id*int | tags.0.tag.name*string |
            | <title>      | <content>       | <tagId>           | <tagName>              |
        Examples:
            | title           | content           | tagId | tagName        |
            | "title of term" | "content of term" | 1     | "notImportant" |
# Scenario: fail

