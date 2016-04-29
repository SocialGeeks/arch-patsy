#!/bin/sh

echo *************************************************************************
echo [+] Adding BlackArch Repositories
echo *************************************************************************
sleep 3;

cd /tmp
curl -O https://blackarch.org/strap.sh

SHASUM=$(sha1sum strap.sh | awk '{print $1}')
if [[ $SHASUM != "86eb4efb68918dbfdd1e22862a48fda20a8145ff" ]]; then exit 1; fi

echo '' | bash strap.sh

