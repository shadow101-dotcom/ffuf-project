#!/bin/bash

TARGET="http://example.com/page.php"
WORDLIST="/usr/share/wordlists/params.txt"

ffuf -u "$TARGET?FUZZ=test" -w $WORDLIST -mc 200 -o param_results.txt -v
