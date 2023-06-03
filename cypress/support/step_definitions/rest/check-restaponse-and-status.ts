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
        const expectedData = DT2Object.resolve(data) as any;
        const compare = deepInclude(responseData, expectedData) ;
        if(!compare){
          console.log('not included' ,clone , expectedData )
        }
        expect(compare).to.eq(true);
        
      } else if(+statusCode >= 400 && +statusCode < 500 ) {
        expect(body).have.property('message')
      }
  })
});

export function deepInclude(object , contain , parentKey = ''){
  if(!object){
    console.error(`${parentKey} object not exist`)
    return false ;
  }
  for(const [key, value] of Object.entries(contain)){
    if (Array.isArray(value)){
      for (const cItemIndex in value){
        let notFound = true;
        for (const oItemIndex in object[key]){
          if (deepInclude(
              object[key][oItemIndex], 
              value[cItemIndex], 
              `${parentKey}${parentKey? '.' : ''}${cItemIndex}`
            )){
            object[key].pop(oItemIndex);
            notFound = false;
            break;
          }
        }
        if (notFound) {
          console.error( `${parentKey} array not contain` , cItemIndex)
          return false;
        }
      }
    } else if ( typeof value === 'object'){
      return deepInclude(object[key], value , `${parentKey}${parentKey? '.' : ''}${key}`);
    } else {
      if (object[key] !== value){ 
        console.error( `${parentKey}${parentKey? '.' : ''}${key} ${object[key]} not equal ${value}`)
        return false;
      }
    }
  }
  return true;
}