import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

Then("I should login", () => {
  cy.get('input[name="UserName"]').type("admin");
  cy.get('input[name="password"]').type("81310514");
  cy.get(".login-btn").click();
  cy.contains("داشبورد");
});
