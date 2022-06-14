#!/bin/bash
# usage: $0 &lt;domains file&gt;
domains=`cat $1`
for domain in $domains
do
    stripped_domain=${domain#www.} # strip a leading www.
    reg=`whois $stripped_domain | grep -i  Organization:`
    echo "[$domain] $reg"
done
