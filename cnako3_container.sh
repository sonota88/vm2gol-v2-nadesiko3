#!/bin/bash

rm_if_exists() {
  local path="$1"; shift

  if [ -e "$path" ]; then
    rm "$path"
  fi
}

export STDIN_FILE=z_tmp/stdin

rm_if_exists $STDIN_FILE

if [ -p /dev/stdin ]; then
  cat > $STDIN_FILE
fi

cnako3 "$@"
