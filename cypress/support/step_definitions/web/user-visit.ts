import { When, Then, Given } from "@badeball/cypress-cucumber-preprocessor";
var url={
  home : '',
  dashboard:'/dashboard',
  compony:'/compony',
  profile :'/profile',
  login:'/login',
  signup:'/signup'
}
Given("User visit {word} page in web", (link) => {
  cy.visit(url[link as string]);
});
