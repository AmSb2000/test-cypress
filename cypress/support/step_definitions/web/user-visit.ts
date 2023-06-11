import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given('User should see the game in his carts',()=>{
    cy.get('div[class="cart_item"]').should('exist');
})