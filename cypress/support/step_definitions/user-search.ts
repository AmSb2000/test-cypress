import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given('User search {string}',(word)=>{
    cy.get('input[name="term"]').then((searchBox)=>{
        cy.wrap(searchBox[0]).type(word as string)
    })
    cy.get('div.searchBox').find('a').click();
})