#!/bin/sh

# compare refactored and old stylesheet

grunt && \
git diff -w --patience --no-index --color-words \
  luci/themes/bootstrap/htdocs/luci-static/bootstrap/cascade.css \
  dist/css/bootstrap.css
