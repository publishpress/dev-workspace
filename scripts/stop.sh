#!/usr/bin/env bash

source "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/env-init.sh"
cd "$DEV_WORKSPACE_DIR"

sh ./scripts/terminal-service-stop.sh
