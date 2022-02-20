#!/usr/bin/env bash
BASE_VM_NAME="sw4iot"
OUTPUT_FILENAME="Ubuntu-2110-IoT-Dev"
INFO_FILE="info.json"

vagrant package \
    --base "$BASE_VM_NAME" \
    --output "$OUTPUT_FILENAME" \
    --info "$INFO_FILE" \
    --color \
    --debug-timestamp
