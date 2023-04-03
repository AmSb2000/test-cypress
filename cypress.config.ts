import { defineConfig } from "cypress";
import { addCucumberPreprocessorPlugin } from "@badeball/cypress-cucumber-preprocessor";
import browserify from "@badeball/cypress-cucumber-preprocessor/browserify";
import * as dotenv from 'dotenv'
dotenv.config() // read .env file from project root and add it to process.env
import { backup_db, restore_db } from "./share-cypress-cucumber-tools/db_management/db_management"


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
    "db:seedAndBackup":() => {
      console.log('seedAndBackup the db')
      // TODO: add seeds
      backup_db()
      return true;
    },
    "db:restore": () => {
      console.log('restore the db')
      restore_db()
      return true;
    },
  });

  // Make sure to return the config object as it might have been modified by the plugin.
  return config;
}

export default defineConfig({
  e2e: {
    baseUrl: "https://dg.hyvatech.com/",
    specPattern: "**/*.feature",
    setupNodeEvents,
    chromeWebSecurity: false,
  },
});
