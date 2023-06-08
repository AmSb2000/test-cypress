import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given("User click {string} in dashboard menu",(title)=>{
    const lable = '[cy-lable="'+title+'"]';
    cy.get(lable).click();   
})