@qa_release
Feature: dadras.com
  Scenario Outline: login
    Given User visit home page in <platform> 
    * User fill create session form in <platform>:
      | username | <username> |
      | password | <password> |
    When User submit in <platform> 
    Then User see <message>

  @web @current 
  Examples: 
    | platform | username | password | message |
    | web      | admin    | 81310514 | success |
  
  @rest
  Examples: 
    | platform | username | password | message | 
    | rest     | admin    | 81310514 | success |
  
