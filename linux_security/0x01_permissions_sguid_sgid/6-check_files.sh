#!/bin/bash
find $1 -perm -6000 -mtime -1 -exec ls -ldb {} \;
