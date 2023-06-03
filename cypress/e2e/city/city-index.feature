@qa_release
Feature: City CRUD
  Scenario: index - success
    When User submit "index" "city"-"" as "customer" in rest
    Then Check response data and statusCode <statusCode>
      | id*int | name*string | slug*string | province.id*int | province.name*string | province.slug*string |
      | <id>   | <name>      | <slug>      | <provinceId>    | <provinceName>       | <provinceSlug>       |
    Examples:
      | id | name   | slug   | provinceId | provinceName     | provinceSlug     | statusCode |
      | 1  | (اسکو) | (اسکو) | 1          | (آذربایجان شرقی) | (آذربایجان-شرقی) | 200        |


