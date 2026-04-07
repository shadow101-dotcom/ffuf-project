#!/bin/bash

TARGET=$1
WORDLIST="/usr/share/wordlists/dirb/common.txt"

if [ -z "$TARGET" ]; then
    echo "Usage: $0 <URL_with_endpoint>"
    exit 1
fi

ffuf -u "$TARGET?FUZZ=test" -w "$WORDLIST" -mc 200 -o param_results.txt -v
