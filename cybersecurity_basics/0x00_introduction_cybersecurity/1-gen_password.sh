#!/bin/bash
strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 20 | tr -d '\n'
