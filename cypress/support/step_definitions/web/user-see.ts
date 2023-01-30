import { Then } from "@badeball/cypress-cucumber-preprocessor";

Then("User see {word} web", (...args) => {
  console.log(args);
});
