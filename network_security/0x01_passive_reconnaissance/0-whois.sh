#!/bin/bash
whois "$1" | awk '{ print $1 $2|}'
