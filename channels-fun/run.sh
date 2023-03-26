#!/bin/bash 

nim --threads:on c -r src/main.nim
rm src/main
