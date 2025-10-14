#!/bin/sh
set -eu
output="$(${0%/*}/colorstrace head -n1 /etc/passwd)"
echo "$output" | { set -x; grep -qo '97mexecve'; } # white
echo "$output" | { set -x; grep -qo '37mmmap'  ; } # grey
echo "$output" | { set -x; grep -qo '31mopenat'; } # red
echo "$output" | { set -x; grep -qo '0mroot'   ; } # neutral
