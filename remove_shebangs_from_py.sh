#!/bin/bash

for file in *.py; do
    if head -n 1 "$file" | grep -q "^#!"; then
        tail -n +2 "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
    fi

    if [[ $(head -n 1 "$file") == "" ]]; then
        tail -n +2 "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
    fi
done

