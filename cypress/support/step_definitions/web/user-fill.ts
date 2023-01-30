import { Given } from "@badeball/cypress-cucumber-preprocessor";
import { filler } from "../../../../share-cypress-cucumber-tools/cy-ms-form-builder/public";

Given("User fill {word} {word} form in web:", (...args) => {
  filler;
  console.log(args);
});
