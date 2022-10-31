#!/bin/bash
# Runs `mason bundle` to generate bundles for all bricks within the respective templates directories.

bricks=(core)

for brick in "${bricks[@]}"
do
    echo "bundling $brick..."
    mason bundle -s git "https://github.com/moinsen-dev/flutter_starter/bricks/$brick" --git-path brick -t dart -o "lib/src/commands/create/templates/$brick"
done

dart format .