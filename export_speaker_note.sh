#!/bin/bash

filename=$1
[[ ! -f "${filename}" ]] && filename=git-workflow_for_es

python export_speaker_note_to_csv.py -i "${filename}".pptx -o "${filename}".csv --botnoi
