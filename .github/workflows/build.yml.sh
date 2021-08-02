#!/bin/bash
set -e

CWD=$(cd $(dirname $0); pwd)

for dir in "$CWD"/../../Versions/*/ ; do
  version=$(basename "$dir")
  name="runner-v$(sed 's/\.//g' <<<"$version")"
  sed "s/%VERSION%/$version/g;" "$CWD/build.yml.template" > "$CWD/build_$version.yml"
done
