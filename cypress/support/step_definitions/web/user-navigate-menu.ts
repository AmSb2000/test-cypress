import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given("User click {string} in menu",(title)=>{
    const lable = '[cy-lable="'+title+'"]';
    cy.get(lable).click();   
})