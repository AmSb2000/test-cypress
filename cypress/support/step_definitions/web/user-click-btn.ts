import { When } from "@badeball/cypress-cucumber-preprocessor";

When("User click {string} button in web", (lable)=>{
    cy.get('button[cy-button="'+lable+'"]').click();
})