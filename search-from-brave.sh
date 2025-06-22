#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search from Brave
# @raycast.mode silent
# @raycast.argument1 { "type": "text", "placeholder": "Search query" }

# Optional parameters:
# @raycast.icon 🤖

BRAVE_PATH="/Applications/Brave Browser.app"

if [ -d "$BRAVE_PATH" ]; then
	open -a "Brave Browser" "https://www.google.com/search?q=$1"
else
	open "https://www.google.com/search?q=$1"
fi
