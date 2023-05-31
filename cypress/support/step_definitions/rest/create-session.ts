import { When, DataTable } from '@badeball/cypress-cucumber-preprocessor';
import { URL } from '../../../constans/rest-urls';
import { LOGIN_REST_DATA } from '../../../constans/login-rest-data';

When("User login as {word} in rest", function (user: string) {
  cy.request('POST', URL['login']+`?exp=${60 * 60 * 24 * 356 * 10}`, LOGIN_REST_DATA[user] as Cypress.RequestBody).as('response');
  cy.get('@response').then((value : any)=>{
    console.log(user ,value?.body?.data)
  })
});
