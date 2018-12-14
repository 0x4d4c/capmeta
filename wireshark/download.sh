#!/bin/bash
set -u

here="$(dirname $(readlink -e $0))"
while read url; do
    pcap=$(echo ${url} | sed 's/.*=\(.*\)$/\1/')
    wget -c -O "${pcap}" "${url}"
done < ${here}/download-links

