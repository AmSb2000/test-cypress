import { DataTable, Given } from "@badeball/cypress-cucumber-preprocessor";
import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj';

Given("User fill {word} widget", (word ,data:DataTable)=>{
    let res = DT2Object.resolve(data);
    cy.get('form').then((form)=>{
        form[0].setData(res);
    })
    
})