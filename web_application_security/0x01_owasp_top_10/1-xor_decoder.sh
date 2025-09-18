#!/bin/bash

# Check if an argument was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 {xor}<base64_string>"
    exit 1
fi

# Extract the Base64 part by removing the '{xor}' prefix
# ${1#\{xor\}} removes the shortest match of the pattern '{xor}' from the front of $1
base64_string="${1#\{xor\}}"

# Base64 decode the string, then XOR every byte with 0x5F
# Using 'xxd' to get hex, then manipulate with sed, then convert back with 'xxd -r'
# Using 'echo' with '-n' to avoid adding a newline which would be base64 decoded
echo -n "$base64_string" | base64 -d | xxd -p -c 0 | sed 's/../\n&/g' | while read hex; do
    if [ -n "$hex" ]; then
        # Convert hex to decimal, XOR with 0x5F (95 in decimal), convert back to hex, then to a character
        printf "%02x" $(( 0x$hex ^ 0x5F )) | xxd -r -p
    fi
done

# Print a newline at the end for clean output
echo
