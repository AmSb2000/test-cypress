import "../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

 before(() => {
	console.log('I run before tests start')
	cy.task('dataManagement:before').then(function(res) {expect(res).to.eq(true); console.log('dataManagement:before task')})
})

beforeEach(() => {
	console.log('I run before every test in every spec file!!!!!!')
	cy.task('dataManagement:beforeEach').then(function(res) {expect(res).to.eq(true); console.log('dataManagement:beforeEach task')})
})

after(() => {
	console.log('I run after test in every spec file!!!!!!')
	cy.task('dataManagement:after').then(function(res) {expect(res).to.eq(true); console.log('dataManagement:after task')})
})