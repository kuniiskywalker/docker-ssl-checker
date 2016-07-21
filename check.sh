#!/bin/bash

if [ $# -ne 1 ]; then
  echo "invalid parameter"
  exit 1
fi

/usr/bin/ruby /usr/local/bin/check.rb $1
