#!/bin/bash

filename=$1
[[ ! -f "${filename}" ]] && filename=git-workflow_for_es

# npm install --save-dev @marp-team/marp-cli
THEME="--theme ~/.marp/themes/graph_paper.css"
marp ${THEME} --allow-local-files --pptx "${filename}".md

./export_speaker_note.sh "${filename}"
