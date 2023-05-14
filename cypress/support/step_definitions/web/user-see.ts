import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then("User see {string}", (word) => {
  cy.contains(word as string);
});

Then("User dont see {word} in web", (title)=>{
  cy.get('form').should('not.contain' , title);
})
