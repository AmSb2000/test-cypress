import { When, DataTable } from '@badeball/cypress-cucumber-preprocessor';
import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj/src/app';
import { URL } from '../../../constans/api-urls';

When("User submit {word} with method {word} in rest", (subject, method, data: DataTable) => {
  console.log('\n\n inside stepdifinetion')
  let res = DT2Object.resolve(data)
  console.log(res)
  
  console.log(`subject is ${subject}, method is ${method}, data is ${JSON.stringify(res)}`)
  // console.log(this);
  cy.request(method as string, URL[subject as string], res as Cypress.RequestBody).then((response)=>{
    console.log(response);
  });

  return true;
});
