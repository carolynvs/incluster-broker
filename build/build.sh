#!/usr/bin/env bash
set -euo pipefail

go build -i -o bin/incluster-broker ./cmd/broker
