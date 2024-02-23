#!/usr/bin/env bash

set -euo pipefail

[[ -z "${DEBUG:-}" ]] || set -x

log_debug() {
  if [[ -n "${VERBOSE:-}" ]] || [[ "${VERBOSITY:-2}" -ge 2 ]]; then
    { if [[ -t 2 ]]; then printf '\033[0;37m'; fi
      if [[ $# -eq 0 ]]; then cat; else printf '%s\n' "$*"; fi
      if [[ -t 2 ]]; then printf '\033[0m'; fi
    } 1>&2 || true
  fi
}

log_info() {
  if [[ -n "${VERBOSE:-}" ]] || [[ "${VERBOSITY:-2}" -ge 2 ]]; then
    { if [[ -t 2 ]]; then printf '\033[0;32m'; fi
      if [[ $# -eq 0 ]]; then cat; else printf '%s\n' "$*"; fi
      if [[ -t 2 ]]; then printf '\033[0m'; fi
    } 1>&2 || true
  fi
}

log_warn() {
  if [[ -n "${VERBOSE:-}" ]] || [[ "${VERBOSITY:-2}" -ge 2 ]]; then
    { if [[ -t 2 ]]; then printf '\033[0;33m'; fi
      if [[ $# -eq 0 ]]; then cat; else printf '%s\n' "$*"; fi
      if [[ -t 2 ]]; then printf '\033[0m'; fi
    } 1>&2 || true
  fi
}

log_error() {
  if [[ -n "${VERBOSE:-}" ]] || [[ "${VERBOSITY:-2}" -ge 2 ]]; then
    { if [[ -t 2 ]]; then printf '\033[0;31m'; fi
      if [[ $# -eq 0 ]]; then cat; else printf '%s\n' "$*"; fi
      if [[ -t 2 ]]; then printf '\033[0m'; fi
    } 1>&2 || true
  fi
}
