#!/bin/bash
# getwebpagename.sh 
# returns the title value of the provided webpage URL
# arg 1 to be the URL (unquoted)

curl -sL $1 | awk '/<title>/ {print $0; exit}' | awk -F '<\/?title>' '{print $2; exit}'
