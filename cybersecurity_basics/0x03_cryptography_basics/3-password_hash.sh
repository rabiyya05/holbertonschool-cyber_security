#!/bin/bash
salt=$(openssl rand -hex 16) | echo -n "${1}${salt}" | openssl dgst -sha512
