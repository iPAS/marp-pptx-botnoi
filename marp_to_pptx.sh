#!/bin/bash

# npm install --save-dev @marp-team/marp-cli
THEME="--theme ~/.marp/themes/graph_paper.css"
marp ${THEME} --allow-local-files --pptx git-workflow_for_es.md
