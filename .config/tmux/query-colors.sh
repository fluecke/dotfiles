#!/bin/bash
old=$(stty -g)
stty -echo -icanon min 0 time 0

for i in $(seq 0 15); do
    printf '\e]4;%d;?\a' "$i"
    IFS= read -r -t 0.2 -d $'\a' response
    printf "color %2d: %s\n" "$i" "${response##*;}"
done

stty "$old"
