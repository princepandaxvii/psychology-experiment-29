#!/bin/bash
# Ultimatum automatic test run
# Copyright(c) 2015 Stefano Balietti
# MIT Licensed
#
# Run this from inside the ultimatum directory inside nodegame/games/:
#  $ bin/run-standalone-test.sh
#
# Used for testing this package under other packages.
# Returns true if and only if the tests are run successfully.

# Return on failure immediately.
set -e

ln -fs ../../../node_modules .
npm install

# Go to the nodegame directory and run the automatic game.
cd ../..
node test/launcher-autoplay.js ultimatum
cd games/ultimatum

npm test
