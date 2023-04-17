import "../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

 before(() => {
	// TODO: this should be called just once for all tests. test it...
	console.log('I run before tests start')
	// insert test data to db, with seeder api
	cy.task('db:seed').then(function(res) {expect(res).to.eq(true);console.log('db:seed task finished successfully.')})
	cy.task('db:backup').then(function(res) {expect(res).to.eq(true); console.log('db:backup task finished successfully.')})
})


beforeEach(() => {
	console.log('I run before every test in every spec file!!!!!!')
	cy.task('db:restore').then(function(res) { expect(res).to.eq(true); console.log('db:restore task finished successfully.')})
})