#!/usr/bin/env bash
test -f resuls.json && rm resuls.json ;egrep --include="*.txt" -rwoih '[^[:space:]@]+@[^@[:space:]]+\.[^[:space:]]{2,4}' . | uniq | awk -f json-creator.awk