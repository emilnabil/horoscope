#!/bin/bash

echo "Removing previous version of horoscope ..."
sleep 2
rm -rf /usr/lib/enigma2/python/Plugins/Extensions/horoscope &> /dev/null

echo ""
opkg install enigma2-plugin-extensions-bitrate enigma2-plugin-extensions-oaweather
opkg install curl
sleep 2

# Download and extract the package
cd /tmp || exit
curl -k -Lbk -m 55532 -m 555104 "https://raw.githubusercontent.com/emilnabil/horoscope/refs/heads/main/horoscope.tar.gz" -o /tmp/horoscope.tar.gz
sleep 1
echo "Installing ...."
tar -xzf /tmp/horoscope.tar.gz -C /
echo ""
echo ""
sleep 1
rm -f /tmp/horoscope.tar.gz
sleep 2
exit 0








