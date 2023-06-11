import { When } from "@badeball/cypress-cucumber-preprocessor";

When('User choose the first item',()=>{
    cy.get('a[class="search_result_row ds_collapse_flag "]').then((items)=>{
        cy.wrap(items).should('have.length.gt', 0);
        cy.wrap(items[0]).click();
    })
})