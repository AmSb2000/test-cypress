import { When, Then, Given } from "@badeball/cypress-cucumber-preprocessor";

Given("User visit {word} page in web", (...args) => {
  console.log(...args);
});
