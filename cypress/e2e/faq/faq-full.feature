@qa_release
Feature: FAQ CRUD
  Scenario: full - success
    When User submit "full" "faq"-"1" as "customer" in rest
    # Then User wait for '300' secound
    Then Check response data and statusCode <statusCode>
      | title*string | question* string | answer*string | tags.0.tag.id*int | tags.0.tag.name*string |
      | <title>      | <question>       | <answer>      | <tagId>           | <tagName>              |
    Examples:
      | title     | question     | answer     | tagId | tagName  | statusCode |
      | faq title | faq question | faq answer | 1     | firstTag | 200        |
