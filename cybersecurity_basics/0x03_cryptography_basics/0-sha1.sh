#!/bin/bash
echo -n "$1" | sha1sum | awk '{printf $1}' > 0_hash.txt
