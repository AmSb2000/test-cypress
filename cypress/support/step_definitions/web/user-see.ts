import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then("User see {string}", (word) => {
  cy.contains(word as string);
});
