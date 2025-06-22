#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Add Diary
# @raycast.mode fullOutput
# @raycast.argument1 { "type": "text", "placeholder": "content" }

# Optional parameters:
# @raycast.icon 🤖

# -------設定--------
DATE=$(date '+%Y%m%d')
DATE_HUMAN=$(date '+%Y-%m-%d')
FILENAME="${DATE}_Diary.md"
DIRECTORY="$HOME/Documents/Zettelkasten/40_Journal/41_Diary"
FILEPATH="${DIRECTORY}/${FILENAME}"
TEMPLATE_PATH="$HOME/Documents/zettelkasten/Templates/diary.md"

TEMPLATE_CONTENT=$(<"$TEMPLATE_PATH")

TEMPLATE_CONTENT="${TEMPLATE_CONTENT//\{\{date:YYYY-MM-DD\}\}/$DATE_HUMAN}"

echo "$TEMPLATE_CONTENT" > "$FILEPATH"

open -a "Cursor" "$FILEPATH"
