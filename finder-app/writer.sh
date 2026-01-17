#!/bin/sh

# Check argument count
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required."
    exit 1
fi

writefile=$1
writestr=$2

# Create directory path if it does not exist
mkdir -p "$(dirname "$writefile")"

# Write string to file
echo "$writestr" > "$writefile"

# Check if file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi
