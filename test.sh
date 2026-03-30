#!/bin/sh
set -eu

test_cmd () { ${0%/*}/colorstrace "$@" head -n1 /etc/passwd; }

output="$(test_cmd -e all)"

# Test colors
echo "$output" | { set -x; grep -qo '97mexecve'; } # white
echo "$output" | { set -x; grep -qo '37mmmap'; } # grey
echo "$output" | { set -x; grep -qo '31mopenat'; } # red
echo "$output" | { set -x; grep -qo '0mroot'   ; } # neutral

# Test default strace args
output_short="$(test_cmd)"
test "$(echo "$output" | wc -l)" -gt "$(echo "$output_short" | wc -l)"
