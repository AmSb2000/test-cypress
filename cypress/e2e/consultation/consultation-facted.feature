Feature: create moshavere faced
	Scenario: create moshavere faced
		Given login as a admin
		* in moshavere user page
		* create moshavere request
		* choose moshavere hozoori request
		* choose hose kari
		* choose jenab vakil
		* choose first day active
		* choose first time active
		* accept moshavere
		* accept pardakht
		* choose kif pool
		When accept final pardakht
		Then see detail moshavere
		Then go to moshavere user page
		Then see moshavere with day and time choosed


