#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"

if [ ! -d "$ROOT" ]; then
  echo "Root does not exist: $ROOT" >&2
  exit 1
fi

echo "== Signal Check local quality gates =="
echo "Root: $ROOT"

printf "\n-- git diff whitespace --\n"
if git -C "$ROOT" rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  git -C "$ROOT" diff --check
else
  echo "Not a git repository; skipping git diff --check"
fi

printf "\n-- JSON parse --\n"
ruby "$ROOT/tools/quality/validate_json.rb" "$ROOT"

printf "\n-- YAML parse --\n"
ruby "$ROOT/tools/quality/validate_yaml.rb" "$ROOT"

printf "\n-- File scope --\n"
ruby "$ROOT/tools/quality/check_file_scope.rb" "$ROOT"

printf "\n-- Claim risk --\n"
ruby "$ROOT/tools/quality/check_claim_risk.rb" "$ROOT"

printf "\n-- Run structure --\n"
ruby "$ROOT/tools/quality/check_run_structure.rb" "$ROOT"

printf "\nAll local quality gates completed.\n"
