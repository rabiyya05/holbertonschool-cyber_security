#!/bin/bash
echo -n "$1" | sha1sum > temp.txt
awk '{printf $1}' temp.txt > 0_hash.txt
