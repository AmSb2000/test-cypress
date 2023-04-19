import { Given } from "@badeball/cypress-cucumber-preprocessor";
import { FormFiller } from "../../../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

Given("User fill {word} {word} form in web:", (...args) => {
  FormFiller;
  console.log(args);
});
