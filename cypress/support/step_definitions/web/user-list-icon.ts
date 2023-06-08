import { Given } from "@badeball/cypress-cucumber-preprocessor";
    
Given("User click {word} icon in list" ,(action)=>{
    cy.get('ngx-datatable').then((datatable)=>{
        cy.get('[cy-item = "0"][cy-column-name="'+action+'"]').click();      
    })
})