import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When("I visit dadgam.com", () => {
  cy.visit("");
});

Then("I should login", () => {
  cy.get(".login-h").click();
  cy.get("input")
    .then((element) => {
      cy.wrap(element[0]).type("222222222");
      cy.wrap(element[1]).type("HyvaTech@1234");
    })
    .then(() => {
      cy.get('button[type="submit"]').click();
    });
});
