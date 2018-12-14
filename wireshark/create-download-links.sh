#!/bin/bash
set -eu

here="$(dirname $(readlink -e $0))"
lynx -dump -listonly https://wiki.wireshark.org/SampleCaptures | sed -n 's;.* \(http[s]://.*do=get.*\);\1;p' > "${here}/download-list"

