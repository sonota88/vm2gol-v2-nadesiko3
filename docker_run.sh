#!/bin/bash

docker run --rm -it \
  -v"$(pwd):/home/${USER}/work" \
  my:nadesiko3 "$@"
