#!/bin/bash
awk '{print $7}' logs.txt | sort | uniq -c | sort -nr | awk '{print $2}' | head -1
