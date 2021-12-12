#!/bin/bash

STDIN_FILE=z_stdin

if [ -e $STDIN_FILE ]; then
  rm $STDIN_FILE
fi

if [ -p /dev/stdin ]; then
  cat > $STDIN_FILE
fi

docker run --rm -i \
  -v"$(pwd):/home/${USER}/work" \
  my:nadesiko3 cnako3 "$@"
