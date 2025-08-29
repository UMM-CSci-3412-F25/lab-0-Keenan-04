#!/bin/bash
directoryused=$1
name=$(basename "$directoryused", .tgz)
here=$(pwd)
scratch=$(mktemp -d)
tar -xzf "$directoryused" -c "$scratch"
grep -rl "delete me" . | while read -r file; do
	rm "$file"
done
cd "$scratch" || exit
tar -czf "$here/cleaned_$directoryused" "$name"
