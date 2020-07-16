#!/bin/bash

# this script's directory relative to main build
this_dir="src/power/"
bin_dir="bin/power/"

# compiles transparent window
gcc --verbose `pkg-config --cflags --libs  gtk+-3.0` ${this_dir}tpwindow.c -o ${bin_dir}tpwindow

