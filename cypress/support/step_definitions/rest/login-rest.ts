import { When, DataTable } from '@badeball/cypress-cucumber-preprocessor';
import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj/src/app';
import { URL } from '../../../constans/api-urls';
import { LOGIN_REST_DATA } from '../../../constans/login-rest-data';

When("User login as {word} in rest", function (user) {
  console.log('\n\n inside login step definition')
  console.log(user)
  cy.request('POST', URL['login'], LOGIN_REST_DATA[user as string] as Cypress.RequestBody).as('response');
  cy.get('@response').should((response)=>{
      console.log(`${user} access token:`)
      console.log(response)
      console.log((response as any).body.data.access)
  })
    // .then(function (response){
    //   this.response = response;
    //   // console.log(response);
    //   console.log(`${user} access token:`)
    //   console.log(response.body.data.access)
    // });

  // return true;
});
