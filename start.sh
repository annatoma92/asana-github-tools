#!/bin/bash
cd /usr/src/app
npm install
npm run setup-custom-fields
npm run setup-asana-hooks
npm run setup-github-hooks
npm run dev
