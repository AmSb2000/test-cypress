import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When("I visit dadras.com", () => {
  debugger;
  cy.visit({
    url: "",
    method: "GET",
    onBeforeLoad: () => {
      debugger;
    },
    onLoad: (...args) => {
      console.log("loaded", ...args);
    },
    timeout: 10000,
  });
  cy.contains("ورود کاربر");
});

Then("I should login", () => {
  cy.get('input[name="UserName"]').type("admin");
  cy.get('input[name="password"]').type("81310514");
  cy.get(".login-btn").click();
  cy.contains("داشبورد");
});
