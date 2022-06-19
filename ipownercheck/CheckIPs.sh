#!/bin/bash
# usage: $0 &lt;domains file&gt;
GREEN='\033[0;32m'
RED='\033[0;31m'
WHITE='\033[0;37m'
RESET='\033[0m'

domains=`cat $1`
for domain in $domains
do
    stripped_domain=${domain#www.} # strip a leading www.
    reg=`whois $stripped_domain | grep -i  Organization:`
    
  if [[ $reg == "Amazon" ]]; then
    echo -e "[$domain] $reg"
  else
    echo -e "[$domain] $reg"
  fi
  done
