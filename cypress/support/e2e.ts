import "../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

before(() => {
	// cy.log('I run before every test in every spec file!!!!!!')
	console.log('I run before tests start')
	// insert test data and take snapshot
	cy.task('db:seedAndBackup')
})


beforeEach(() => {
	// cy.log('I run before every test in every spec file!!!!!!')
	console.log('I run before every test in every spec file!!!!!!')
	// restore snapshot
	cy.task('db:restore')
})