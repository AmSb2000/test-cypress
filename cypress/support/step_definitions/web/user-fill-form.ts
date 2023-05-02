// import { Given } from "@badeball/cypress-cucumber-preprocessor";
// import { filler } from "../../../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

// Given("User fill {word} {word} form in web:", (...args) => {
//   filler;
//   console.log(args);
// });
import { DataTable, Given } from "@badeball/cypress-cucumber-preprocessor";
import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj/index';
Given("User fill {word} form", (word ,data:DataTable)=>{
    let res = DT2Object.resolve(data);
    cy.get('form').then((form)=>{
        form[0].setData(res);
    })
    
})