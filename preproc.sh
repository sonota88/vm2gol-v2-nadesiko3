#!/bin/bash

if [ "$1" = "clean" ]; then
  export CLEAN=1
fi

ruby preproc.rb test/test_json.nako3
ruby preproc.rb lexer.nako3
ruby preproc.rb parser.nako3
ruby preproc.rb codegen.nako3
