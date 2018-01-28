#!/usr/bin/env bash

set -euo pipefail

pushd cmd/broker
trap popd EXIT

draft up
