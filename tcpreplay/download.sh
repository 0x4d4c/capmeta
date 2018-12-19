#!/bin/bash
set -eu

here=$(dirname $(readlink -e $0))
mkdir -p "${here}/pcap"
cd "${here}/pcap"
wget -c -i ../download-links
cd - > /dev/null

