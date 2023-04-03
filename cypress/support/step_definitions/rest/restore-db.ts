import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given("Restore DB", (...args) => {
	 	console.log('restoring ')
	 cy.task('db:restore')
});
