#!/bin/bash

for file in *.py; do
    # Si la primera línea es un shebang
    if head -n 1 "$file" | grep -q "^#!"; then
        # Crea un archivo temporal sin la primera línea
        tail -n +2 "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
    fi

    # Si la primera línea está vacía
    if [[ $(head -n 1 "$file") == "" ]]; then
        # Crea un archivo temporal sin la primera línea
        tail -n +2 "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
    fi
done

