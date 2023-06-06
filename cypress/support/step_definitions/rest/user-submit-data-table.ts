import { When, DataTable } from '@badeball/cypress-cucumber-preprocessor';
import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj/src/app';
import { URL } from '../../../constans/rest-urls';
import { ACCESS_TOKEN } from '../../../constans/access-tokens';
import { ACTION_METHODS } from '../../../constans/action-methods';

When("User submit {string} {string}-{string} as {string} in rest dataTable", (action: string, subject: string, subjectId:string  ,user: string, data: DataTable) => {
  // console.log('id is ', id)
  
  let res = data ? DT2Object.resolve(data): data;
  const token = `Barear ${ ACCESS_TOKEN[user]}`  
  
  // check cgrrules base on user
  cy.request({
    method : "GET" ,
    url : '/api/casl-rule', 
    headers: {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${ACCESS_TOKEN[user]}`
    },
  }).then((response)=>{
    cy.log(user ,ACCESS_TOKEN[user] , response.body.data)
  })

  cy.request({
    method: ACTION_METHODS[action], 
    url: URL[subject].concat(subjectId ? `/${subjectId}`: ""),
    headers: {
      'Content-Type': 'application/json',
      'Authorization': `Bearer ${ACCESS_TOKEN[user]}` ,
      'todatatable' : 'all'
    },
    body: res as Cypress.RequestBody,
    failOnStatusCode: false
  }).as('response').then((response)=>{
    console.log(response.body)
  })

  return true;
});