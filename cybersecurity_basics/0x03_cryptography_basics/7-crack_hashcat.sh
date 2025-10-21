#!/bin/bash
hashcat -a 0 -m 0 "$1" /root/Downloads/rockyou.txt
