import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given("User click {word} icon in list" ,(action)=>{
    cy.get('').then((row)=>{
        //؟؟چطوری باید از همون المنت خاص این دکمه رو پیدا کنه 
        cy.wrap(row[0]).find('[cy-action="'+action+'"]').click();
    })
})