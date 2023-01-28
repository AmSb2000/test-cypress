import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then("User see {word}", (...args) => {
  console.log(args);
});
