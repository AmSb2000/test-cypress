@qa_release
Feature: FAQ CRUD
  Scenario: index - success
    When User submit "index" "faq"-"" as <user> in rest
    Then Check response data and statusCode <statusCode>
      | title*string | question* string | answer*string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <title>      | <question>       | <answer>      | <tagId>           | <tagName>              |
    Examples:
      | user       | title     | question     | answer     | tagId | tagName  | statusCode |
      | "customer" | faq title | faq question | faq answer | 1     | firstTag | 200        |