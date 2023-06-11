import { When } from "@badeball/cypress-cucumber-preprocessor";

When('User click add to cart',()=>{
    cy.get('div[class="btn_addtocart"]').click();
})