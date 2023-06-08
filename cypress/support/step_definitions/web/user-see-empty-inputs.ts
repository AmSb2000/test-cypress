import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then("User see empty inputs in web",()=>{   
    cy.get('input').then((inputs)=>{
        for(let i=0 ; i<inputs.length ; i++){
            cy.wrap(inputs[i]).should('be.empty');
        }
    })
})