import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given("User click {word} btn in list" ,(lable)=>{
    cy.get('').then((row)=>{
        //؟؟چطوری باید از همون المنت خاص این دکمه رو پیدا کنه 
        // cy.get('button[cy-button="'+lable+'"]').click();
        cy.wrap(row[0]).find('button[cy-button="'+lable+'"]').click();
    })
})