#!/bin/bash
find $1 -perm -4000 -o -perm -2000 -o -mtime -1 -type f -exec ls -ldb {} \;
