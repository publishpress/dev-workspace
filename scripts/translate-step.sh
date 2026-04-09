#!/usr/bin/env bash
# Print a step line (via echo-step.sh) then run the given command.
# Used by Composer translate* scripts for the same ▶ step labels as pack.sh.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export PATH="${SCRIPT_DIR}:$PATH"

if [ "$#" -lt 2 ]; then
  echo "Usage: $(basename "$0") \"step label\" <command> [args...]" >&2
  exit 1
fi

label=$1
shift
echo-step.sh "$label"
exec "$@"
