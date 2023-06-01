// import { Given } from "@badeball/cypress-cucumber-preprocessor";
// import { filler } from "../../../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

// Given("User fill {word} {word} form in web:", (...args) => {
//   filler;
//   console.log(args);
// });
import { DataTable, Given } from "@badeball/cypress-cucumber-preprocessor";
import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj/src/app/index';
Given("User fill {word} form in web", (word ,data:DataTable)=>{
    let res = DT2Object.resolve(data);
    // cy.get('form').then((form)=>{
    //     form[0].setData(res);
    // })
    cy.get('form[name="' + name + '"]').then((form)=>{
        form[0].setData(res);
    })
})