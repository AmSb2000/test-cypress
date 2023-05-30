import { Given } from "@badeball/cypress-cucumber-preprocessor";
import { ACCESS_TOKEN } from "../../../constans/access-tokens";


Given("User login as {word}", (user: string) => {
  const token = ACCESS_TOKEN[user] ;
  // console.log(`got token of ${user}`)
  cy.wrap(token).as('token')
});
