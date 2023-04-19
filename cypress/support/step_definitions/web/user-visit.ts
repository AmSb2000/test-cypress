import { When, Then, Given } from "@badeball/cypress-cucumber-preprocessor";
import { URL } from "../../../constans/web-urls";
Given("User visit {word} page in web", (link) => {
  cy.visit(URL[link as string]);
});
