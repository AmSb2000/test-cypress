import { Given } from "@badeball/cypress-cucumber-preprocessor";
// import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj/src/app';

let object = {
    admin:{
        phone: '2',
        password:'555555'
    },
    user:{
        phone: '2',
        password:'555555'
    },
    sazande:{
        phone:'',
        password:''
    }
}
Given("User login as a {word}" , (role)=>{
    cy.get('form').then((form)=>{
        form[0].setData({"object": object[role as string]});
    })
})