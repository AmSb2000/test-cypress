import { DataTable, Then } from "@badeball/cypress-cucumber-preprocessor";

Then("User should see data in list in web" ,(dataTable:DataTable)=>{
    let input = dataTable['rawTable'][1];
    dataTable['rawTable'][0].forEach((title , index) => {
        cy.get('[cy-field="'+title+'"][cy-item="0"]').invoke('text').then((data)=>{
            expect(data).to.equal(input[index]);
        })
        
    });
})
Then("User should see columns in list in web",(dataTable:DataTable)=>{
    let column = dataTable['rawTable'][0];
    for(let i=0 ; i <column.length ; i++){
        cy.get('[cy-column="'+column[i]+'"]').invoke('text').then(columnList=>{
            expect(columnList).to.equal(column[i]);
        })
    }
})