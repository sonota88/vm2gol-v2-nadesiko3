#!/bin/bash

docker run --rm -it \
  -v"$(pwd):/home/${USER}/work" \
  vm2gol-v2-nadesiko3:0.0.1 "$@"
