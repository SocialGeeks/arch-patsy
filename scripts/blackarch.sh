#!/bin/sh

echo *************************************************************************
echo [+] Installing blackarch tools
echo *************************************************************************
sleep 3;

TEMP_DIR=$(mktemp -d)
cd "${TEMP_DIR}"

# Download blackarch bootstrap script
curl -O http://blackarch.org/strap.sh > /dev/null 2>&1

# Verify script hash
BLACKARCH_SHA1=$(sha1sum strap.sh | awk '{print $1}')
if [[ "${BLACKARCH_SHA1}" != "f8456229463718c097cf70ed06a806f981be7423" ]];
then
    echo "CRITICAL: DarkArch strap failed validation. Got: ${BLACKARCH_SHA1}"
    sleep 3
    exit 1
fi

# Run bootstrap script and install blackarck
sudo chmod +x ./strap.sh && sudo ./strap.sh

# Install Parts
sudo pacman --noconfirm -S blackarch-webapp blackarch-proxy blackarch-cracker \
                           blackarch-spoof blackarch-misc blackarch-sniffer \
                           blackarch-automation blackarch-fingerprint \
                           blackarch-recon blackarch-database blackarch-tunnel \
                           blackarch-decompiler

echo Skipping optional packages:
echo " - blackarch-fuzzer"
echo " - blackarch-scanner"
echo " - blackarch-networking"
echo " - blackarch-disassembler"
echo " - blackarch-reversing"
echo " - blackarch-exploitation"
echo " - blackarch-debugger"
sleep 5

# Remove temp directory
cd -
rm -rf "${TEMP_DIR}"
