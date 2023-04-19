import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then("User see {word}", (word) => {
  cy.contains(word as string);
});
