import { DataTable, Given } from "@badeball/cypress-cucumber-preprocessor";
import { DT2Object } from "../../../../share-cypress-cucumber-tools/dtable2obj";

export function ObjectToFormData<Type>(
    obj: Type,
    form?: FormData,
    namespace?: string
): TFromData<Type> {
    const formData = form || new FormData();
    let formKey = "" as string;
    
    for (const property in obj) {
        
        if (obj.hasOwnProperty(property)) {
            if (namespace) {
                if (!isNaN(Number(property))) {
                    formKey = namespace + "[" + property + "]";
                } else {
                    formKey = namespace + "." + property;
                }
            } else {
                formKey = property;
            }

            // if the property is an object, but not a File,
            // use recursivity.functionFormData
            if (
                typeof obj[property] === "object" &&
                !(obj[property] instanceof File)
            ) {
                ObjectToFormData(obj[property], formData, formKey);
            } else {
                // if it's a string or a File object
                
                formData.append(formKey, obj[property] as any);
            }
        }
    }

    return formData;
}
export class TFromData<Type> extends FormData { }


Given('User fill {word} form in rest', (id, data: DataTable) => {
    let res = DT2Object.resolve(data);
    setTimeout(() => {
        let formData = ObjectToFormData(res);
        for (const key of formData.keys()) {
            console.log(`key:${key}`,`value:${formData.get(key)}`);
        }
    }, 100);
})