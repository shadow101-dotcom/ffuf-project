# ffuf-project

#!/bin/bash

TARGET="http://example.com"
WORDLIST="/usr/share/wordlists/dirb/common.txt"

ffuf -u $TARGET/FUZZ -w $WORDLIST -mc 200 -o dir_results.txt -v
