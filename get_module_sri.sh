#!/bin/sh
URL="https://github.com/carlwhamilton/${1}/archive/refs/tags/v${2}.tar.gz"
echo "sha256-$(curl --silent --location ${URL} | openssl dgst -sha256 -binary | openssl base64 -A)"
