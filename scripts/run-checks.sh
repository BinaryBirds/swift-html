#!/usr/bin/env bash
set -euo pipefail

log() { printf -- "** %s\n" "$*" >&2; }
error() { printf -- "** ERROR: %s\n" "$*" >&2; }
fatal() { error "$@"; exit 1; }

CURRENT_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

NUM_CHECKS_FAILED=0

FIX_FORMAT=""
for arg in "$@"; do
  if [ "$arg" == "--fix" ]; then
    FIX_FORMAT="--fix"
  fi
done

SCRIPT_PATHS=(
  "${CURRENT_SCRIPT_DIR}/check-broken-symlinks.sh"
  "${CURRENT_SCRIPT_DIR}/check-unacceptable-language.sh"
)

for SCRIPT_PATH in "${SCRIPT_PATHS[@]}"; do
  log "Running ${SCRIPT_PATH}..."
  if ! bash "${SCRIPT_PATH}"; then
    ((NUM_CHECKS_FAILED+=1))
  fi
done

log "Running swift-format..."
bash "${CURRENT_SCRIPT_DIR}"/run-swift-format.sh $FIX_FORMAT > /dev/null
FORMAT_EXIT_CODE=$?
if [ $FORMAT_EXIT_CODE -ne 0 ]; then
  ((NUM_CHECKS_FAILED+=1))
fi

if [ "${NUM_CHECKS_FAILED}" -gt 0 ]; then
  fatal "❌ ${NUM_CHECKS_FAILED} check(s) failed."
fi

log "✅ All check(s) passed."
