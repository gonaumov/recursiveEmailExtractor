#!/usr/bin/env bash
total=`egrep --include="*.txt" -rwoih '[^[:space:]@]+@[^@[:space:]]+\.[^[:space:]]{2,4}' . | wc -l`

test -f results.json && rm results.json; egrep --include="*.txt" -rwoih '[^[:space:]@]+@[^@[:space:]]+\.[^[:space:]]{2,4}' . | sort | uniq | awk -v total=$total -f json-creator.awk