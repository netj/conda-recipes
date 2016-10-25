#!/usr/bin/env bash
set -eu
git clone https://github.com/netj/buildkit.git
PATH="$PWD/buildkit:$PATH" \
USER="$(whoami)" \
DEPENDS_PREFIX="$PWD" \
prefix="$PREFIX" \
./buildkit/depends/common/bash/install.sh
