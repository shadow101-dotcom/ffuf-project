# ffuf-project

#!/bin/bash

TARGET=$1
WORDLIST="/usr/share/wordlists/dirb/common.txt"

if [ -z "$TARGET" ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

ffuf -u "$TARGET/FUZZ" -w "$WORDLIST" -e .php,.html,.txt,.bak -mc 200,301,302 -o dir_results.txt -v
