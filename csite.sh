#!/bin/bash

availability () {
  if whois "$1" | grep -q "Expiration Date"
  then
    echo "$1 is taken"
  else
    echo "$1 is available!!!"
  fi
}

dotcom () {
  availability "$1.com"
}

dotorg () {
  availability "$1.org"
}

dotnet () {
  availability "$1.net"
}

dotcom $1
dotnet $1
dotorg $1
