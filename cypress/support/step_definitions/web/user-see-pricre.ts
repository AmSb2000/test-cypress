import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then('User should see the price',()=>{
    cy.get('div[class="game_purchase_price price"]').should('exist');
})