#!/usr/bin/env bash
./node_modules/superscript/bin/parse.js -f
./node_modules/superscript/bin/cleanup.js --mongo superscriptDB --mongoURI ${MONGO_URI}
node server.js
