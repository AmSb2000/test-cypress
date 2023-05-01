import "../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

 before(() => {
	console.log('I run before tests start')
	// insert test data to db, with seeder api
	cy.task('dataManagement:seed').then(function(res) {expect(res).to.eq(true);console.log('db:seedIfBackupNotExist task finished successfully.')})
	cy.task('dataManagement:backup').then(function(res) {expect(res).to.eq(true); console.log('db:backupIfNotExist task finished successfully.')})
})


beforeEach(() => {
	console.log('I run before every test in every spec file!!!!!!')
	cy.task('dataManagement:restore').then(function(res) { expect(res).to.eq(true); console.log('db:restore task finished successfully.')})
})