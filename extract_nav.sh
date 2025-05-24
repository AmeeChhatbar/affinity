#!/bin/bash

# URL to fetch data from
URL="https://www.amfiindia.com/spages/NAVAll.txt"

# Output file
OUTPUT_FILE="scheme_nav.tsv"

# Fetch and parse the data
curl -s "$URL" | awk -F ';' 'NF >= 5 && $1 ~ /^[0-9]+$/ { print $4 "\t" $5 }' > "$OUTPUT_FILE"

echo "Data saved to $OUTPUT_FILE"
