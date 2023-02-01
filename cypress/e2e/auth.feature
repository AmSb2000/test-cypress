Feature: Auth
	
	@rest
	Scenario Outline: login
		Given user visit home page
		* user fill create session form: 
			| property | <dataId> | <dataId> |
			| username | admin    | alaki    |
			| password | admin    | alaki    |
		When user submit create session
		Then user get isAuthenticated contain:
			| isAuth  | <isAuth> |
	
		
	Examples: 
		| dataId | isAuth  |
		|   1    | true    |
		|   2    | false   |

	Scenario: logout
		Given user session admin
		When User submit delete session
		Then User get isAuthenticated contain:
			| isAuth | false | 
		


