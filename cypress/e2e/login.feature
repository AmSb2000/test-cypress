@qa_release   @current 
Feature: dadras.com
  Scenario Outline: login dadras
    Given User visit homepage in <platform> 
    When User should login in <platform> : 
      | username | <username> |
      | password | <password> |
    Then User loged in 

  @web
  Examples: 
    | platform | username | password | 
    | web      | admin    | 81310514 | 
  
  @rest
  Examples: 
    | platform | username | password | 
    | rest      | admin    | 81310514 | 
  
