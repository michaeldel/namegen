#!/usr/bin/env bash
sources=(examples/colors.txt examples/nouns.txt)

for f in ${sources[@]}; do
    cat "$f" | shuf -n1
done | paste -s - -d '-'

