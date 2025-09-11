#!/bin/bash
curl -u "$1" -X POST -d "$3" "$2"
