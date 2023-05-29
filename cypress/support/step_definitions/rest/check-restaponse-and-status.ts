import { When, DataTable } from '@badeball/cypress-cucumber-preprocessor';
import { DT2Object } from '../../../../share-cypress-cucumber-tools/dtable2obj/src/app';

When("Check response data and statusCode {word}", function (statusCode: string, data: DataTable) {
  cy.get('@response').then((response)=>{
      expect((response as any).status).to.eq(Number(statusCode)); 
      if (data){
        let responseData = (response as any).body.data
        // if it was array, just check the first element...
        responseData = Array.isArray(responseData)? responseData[0] : responseData;
        const expectedData = DT2Object.resolve(data) as any;
        expect(deepInclude(responseData, expectedData)).to.eq(true)
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
            delete object[key][oItemIndex];
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