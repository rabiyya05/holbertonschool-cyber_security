#!/bin/bash

domain=$1

whois "$domain" | awk -F: '
/^Registrant|^Admin|^Tech/ {
    key=$1
    value=$2
    gsub(/^[ \t]+/, "", value)   # başlanğıc boşluqları sil
    gsub(/[ \t]+$/, "", value)   # sondakı boşluqları sil
    print key "," value
}' > "$domain.csv"
