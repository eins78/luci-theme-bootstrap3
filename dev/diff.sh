#!/bin/sh

# compare refactored and old stylesheet
########################################

BUILD="grunt"
SORT="./node_modules/grunt-recess/node_modules/recess/bin/recess --compile"
DIFF="git diff -w --patience --no-index --color-words"

OLD="luci/themes/bootstrap/htdocs/luci-static/bootstrap/cascade.css"
NEW="dist/css/bootstrap.css"

###

$BUILD && \
$SORT "$OLD" > "$OLD"_sorted && \
$DIFF "$OLD"_sorted "$NEW"