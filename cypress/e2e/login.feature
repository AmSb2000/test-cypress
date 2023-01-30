@qa_release
Feature: dadras.com
  Scenario Outline: login
    Given User visit home page in <platform>
    * User fill create session form in <platform>:
      | username | <username> |
      | password | <password> |
      | captcha  | <captcha>  |
    When User submit in <platform>
    Then User see <message> <platform>

    @web @current
    Examples:
      | platform | username | password | message | captcha                         |
      | web      | admin    | 81310514 | success | {'captcha' : 'dali' , age : 23} |

    @rest
    Examples:
      | platform | username | password | message | captcha                         |
      | web      | admin    | 81310514 | success | {'captcha' : 'dali' , age : 23} |

