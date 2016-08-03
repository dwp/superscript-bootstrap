#!/usr/bin/env bash
./node_modules/superscript/bin/parse.js -f
./node_modules/superscript/bin/cleanup.js --mongo superscriptDB
node server.js
