#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Add memo for Zettelkasten
# @raycast.mode silent
# @raycast.argument1 { "type": "text", "placeholder": "Memo" }

# Optional parameters:
# @raycast.icon 🤖

# -------設定--------
# メモの保存先
CONTENT=$1
DIRECTORY="$HOME/Documents/Zettelkasten/00_Inbox/"
FILEPATH="${DIRECTORY}${CONTENT}.md"
# ----------------------------
# メモを保存
touch $FILEPATH
