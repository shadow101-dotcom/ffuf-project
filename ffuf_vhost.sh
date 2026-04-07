#!/bin/bash

TARGET="http://example.com"
WORDLIST="/usr/share/wordlists/subdomains-top1million-5000.txt"

ffuf -u $TARGET -H "Host: FUZZ.example.com" -w $WORDLIST -mc 200 -o vhost_results.txt -v
