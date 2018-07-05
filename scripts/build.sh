#!/usr/bin/env bash
set -ex

ROOTDIR="$( dirname "$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" )"
BINDIR=$ROOTDIR/bin

export GOPATH=$ROOTDIR
export GOOS=linux

echo "Hi My name is Priyam"
go build -o $BINDIR/supply golang/supply/cli
go build -o $BINDIR/finalize golang/finalize/cli
