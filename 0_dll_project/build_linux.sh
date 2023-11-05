#!/bin/sh
clang -o libvorbiswrapper.so -shared -lm -O3 vorbiswrapper.c "$@"
