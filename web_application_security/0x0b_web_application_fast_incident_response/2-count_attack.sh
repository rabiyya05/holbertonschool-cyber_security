#!/bin/bash
awk '{print $1}' logs.txt | sort | uniq -c | sort -n | tail -1 | awk '{print $1}'
