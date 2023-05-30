import { When, DataTable } from '@badeball/cypress-cucumber-preprocessor';
import { URL } from '../../../constans/rest-urls';
import { LOGIN_REST_DATA } from '../../../constans/login-rest-data';

When("User login as {word} in rest", function (user: string) {
  console.log(user)
  cy.request('POST', URL['login'], LOGIN_REST_DATA[user] as Cypress.RequestBody).as('response');
});
