import "../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

before(() => {
	console.log('I run before tests start')
	// insert test data and take snapshot
	// TODO: run cy tast to seed the test data
	cy.task('db:seedAndBackup')
})


beforeEach(() => {
	console.log('I run before every test in every spec file!!!!!!')
	// restore db backup 
	cy.task('db:restore')
})