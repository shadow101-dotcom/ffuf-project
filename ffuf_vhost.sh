#!/bin/bash

DOMAIN=$1
WORDLIST="/usr/share/wordlists/seclists/Discovery/DNS/subdomains-top1million-5000.txt"

if [ -z "$DOMAIN" ]; then
    echo "Usage: $0 <domain.com>"
    exit 1
fi

ffuf -u "http://$DOMAIN" -H "Host: FUZZ.$DOMAIN" -w "$WORDLIST" -mc 200 -o vhost_results.txt -v
