import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given("Fresh DB", (...args) => {
	 	console.log('inside step definition for Fresh DB')
   cy.task('db:teardown')
	 cy.task('db:seed')
});
