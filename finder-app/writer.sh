#!/bin/bash

WRITEFILE="$1"
WRITESTR="$2"

if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments required"
    exit 1
fi

mkdir -p "$(dirname "$WRITEFILE")"
echo "$WRITESTR" > "$WRITEFILE"

if [ "$?" -ne 0 ]; then
    echo "Error: File could not be created"
    exit 1
fi