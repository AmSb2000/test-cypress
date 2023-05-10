#!/bin/bash
npm install 
node_modules/.bin/cypress install
npm run qa_release
