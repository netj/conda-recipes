#!/bin/bash
set -eu -o pipefail

# avoid installing parallel since it conflicts with GNU parallel
sed -i -e 's/parallel//' Makefile
make PREFIX=$PREFIX MANS=
make install MANS=README PREFIX=$PREFIX
