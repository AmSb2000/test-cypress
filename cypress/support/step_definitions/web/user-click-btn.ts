import { When } from "@badeball/cypress-cucumber-preprocessor";

When("User click {word} button", (lable)=>{
    cy.get('button[cy-button="'+lable+'"]').click();
})