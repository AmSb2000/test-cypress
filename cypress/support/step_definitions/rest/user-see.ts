import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then("User see {word} rest", (...args) => {
  console.log(args);
});
