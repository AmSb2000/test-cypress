import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When("web I visit {word}", () => {
  debugger;
  cy.visit("");
  cy.contains("ورود کاربر");
});
