import { Given, Then } from "@badeball/cypress-cucumber-preprocessor";


Then("User wait for {string} secound" ,(secound)=>{
cy.wait(+secound * 1000)  
})