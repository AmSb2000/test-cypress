import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

When("User visit {word} page in web", (...args) => {
  console.log(...args);
});
