#!/usr/bin/env bash

set -xeuo pipefail

pushd cmd/broker
trap popd EXIT

draft up
