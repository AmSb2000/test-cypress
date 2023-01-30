import { When } from "@badeball/cypress-cucumber-preprocessor";

When("User visit {word} page in rest", (...args) => {
  console.log(...args);
});
