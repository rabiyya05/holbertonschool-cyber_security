#!/bin/bash
find $1 -perm -4000 -o -perm -2000 -o -type f -exec chmod 774 {} \;
