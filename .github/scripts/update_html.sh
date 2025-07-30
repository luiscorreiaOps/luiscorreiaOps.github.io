#!/bin/bash

NEW_TEXT="$1"
INDEX_FILE="index.html"
PLACEHOLDER="MOTIVATIONAL_TEXT_PLACEHOLDER"

echo "$NEW_TEXT" > new_text.tmp

sed -i -e "/$PLACEHOLDER/r new_text.tmp" -e "/$PLACEHOLDER/d" "$INDEX_FILE"

rm new_text.tmp

echo "index.html atualizado usando o método de placeholder."