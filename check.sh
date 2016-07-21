#!/bin/bash

if [ $# == 3 ]; then
  HOST=$3 
else
  HOST="localhost:443" 
fi

if [ $1 == "cipher" ]; then
  /usr/bin/ruby /usr/local/bin/check_cipher.rb $2 $HOST
fi

if [ $1 == "protocol" ]; then
  /usr/bin/ruby /usr/local/bin/check_protocol.rb $2 $HOST
fi
