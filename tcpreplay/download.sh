#!/bin/bash
set -eu

here=$(dirname $(readlink -e $0))
wget -c -i ${here}/download-links

