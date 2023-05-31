import { When, DataTable } from '@badeball/cypress-cucumber-preprocessor';
import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj/src/app';

When("Check response data and statusCode {word}", function (statusCode: string, data: DataTable) {
  cy.get('@response').then((response)=>{
      const body = (response as any).body ;
      expect((response as any).status).to.eq(Number(statusCode)); 
      if ( data && +statusCode < 300  && +statusCode >= 200){
        let responseData = body.data ;
        // if it was array, just check the first element...
        responseData = Array.isArray(responseData)? responseData[0] : responseData;
        const clone = (JSON.parse(JSON.stringify(responseData)))
        cy.log(clone);
        const expectedData = DT2Object.resolve(data) as any;
        expect(deepInclude(responseData, expectedData)).to.eq(true)
      } else if(+statusCode >= 400 && +statusCode < 500 ) {
        expect(body).have.property('error')
        expect(body).have.property('message')
      }
  })
});

export function deepInclude(object , contain){
  for(const [key, value] of Object.entries(contain)){
    if (Array.isArray(value)){
      for (const cItemIndex in value){
        let notFound = true;
        for (const oItemIndex in object[key]){
          if (deepInclude(object[key][oItemIndex], value[cItemIndex])){
            object[key].pop(oItemIndex);
            notFound = false;
            break;
          }
        }
        if (notFound) {
          // console.log('false check array, ', value[cItemIndex])
          return false;
        }
      }
    } else if ( typeof value === 'object'){
      return deepInclude(object[key], value);
    } else {
      if (object[key] !== value){ 
        // console.log('false check, ', object[key], value)
        return false;
      }
    }
  }
  return true;
}