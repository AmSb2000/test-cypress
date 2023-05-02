import { When } from "@badeball/cypress-cucumber-preprocessor";

When("User click {string} button", (lable)=>{
    cy.get('button[cy-button="'+lable+'"]').click();
})