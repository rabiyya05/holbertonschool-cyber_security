#!/bin/bash
find $1 -perm -2000 -exec ls -ldb {} \;
