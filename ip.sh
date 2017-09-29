#!/bin/bash

base="$(dirname "$0")"
source "$base/colors.sh"

wan="$(dig +short myip.opendns.com @resolver1.opendns.com)"
lan="$(ip a | grep -Eo 'inet (addr:)?([0-9]+\.){3}([0-9]+)' | grep -Eo '([0-9]+\.){3}[0-9]+' | grep -v '127.0.0.1')"
lanconcat=$(echo $lan | sed 's/\n/ /g')

echo -e "WAN IP: ${blue}$wan${end}"
echo -e "LAN IP: ${green}$lanconcat${end}"
