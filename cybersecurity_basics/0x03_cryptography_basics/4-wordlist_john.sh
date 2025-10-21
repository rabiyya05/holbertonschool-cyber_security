#!/bin/bash
john --wordlist=/home/11079@holbertonstudents.com/Downloads/rockyou.txt --rules --format=raw-md5 "$1"
