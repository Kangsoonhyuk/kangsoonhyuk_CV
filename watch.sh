#!/bin/bash
TARGET="resume.tex"

echo "Watching $TARGET for changes..."
last_checksum=""

while true; do
    # Calculate checksum to detect changes
    current_checksum=$(md5sum "$TARGET" | awk '{print $1}')
    
    if [ "$current_checksum" != "$last_checksum" ]; then
        echo "Change detected. Compiling..."
        make
        if [ $? -eq 0 ]; then
            echo "Compilation successful."
        else
            echo "Compilation failed."
        fi
        last_checksum=$current_checksum
    fi
    sleep 2
done
