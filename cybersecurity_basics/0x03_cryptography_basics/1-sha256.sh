#!/bin/bash
echo -n "$1" | sha256sum | awk '{printf $1}' > 1_hash.txt
