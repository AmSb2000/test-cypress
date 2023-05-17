import { defineConfig } from "cypress";
import { addCucumberPreprocessorPlugin } from "@badeball/cypress-cucumber-preprocessor";
import browserify from "@badeball/cypress-cucumber-preprocessor/browserify";
import * as dotenv from 'dotenv'
dotenv.config() // read .env file from project root and add it to process.env
// TODO: fix imports
import { DataSeederHandler } from "./share-cypress-cucumber-tools/data-management/src/app";

async function setupNodeEvents(
  on: Cypress.PluginEvents,
  config: Cypress.PluginConfigOptions
): Promise<Cypress.PluginConfigOptions> {
  // This is required for the preprocessor to be able to generate JSON reports after each run, and more,
  await addCucumberPreprocessorPlugin(on, config);

  on(
    "file:preprocessor",
    browserify(config, {
      typescript: require.resolve("typescript"),
    })
  );
  // define cypress tasks...
  on("task", {
    "dataManagement:before": () => {
      return DataSeederHandler.getInstance().before()
    },
    "dataManagement:beforeEach":() => {
      return DataSeederHandler.getInstance().beforeEach();
    },
    "dataManagement:after": () => {
      return DataSeederHandler.getInstance().after();
    },
  });

  // Make sure to return the config object as it might have been modified by the plugin.
  return config;
}

console.log(process.env.baseUrl)
export default defineConfig({
  e2e: {
    baseUrl: process.env.baseUrl || "https://dg.hyvatech.com/",
    specPattern: "**/*.feature",
    setupNodeEvents,
    chromeWebSecurity: false,
  },
});