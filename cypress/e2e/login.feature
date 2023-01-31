@qa_release
Feature: dadras.com
  Scenario Outline: success
    Given User visit home page in <platform>
    * User fill create session form in <platform>:
      | property      | <time>       |
      | username      | admin        |
      | password      | 81310514     |
      | captcha.name  | google       |
      | captcha.age   | 12           |
    When User submit in <platform>
    Then User see <message> <platform>

    @web @current
    Examples:
      | platform | time | message | 
      | web      |  1   | success |

    @rest
    Examples:
      | platform | time | message | 
      | rest     | 1    | success | 

