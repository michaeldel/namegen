#!/usr/bin/env bash
DEFAULT=examples/colors.txt:examples/nouns.txt

sources="${NAMEGEN_SOURCES:-$DEFAULT}"

IFS=:; for f in $sources; do
    cat "$f" | shuf -n1
done | paste -s - -d ' '

