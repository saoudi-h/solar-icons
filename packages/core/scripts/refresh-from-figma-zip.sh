#!/usr/bin/env bash
# Stage and validate an exporter ZIP before replacing any production assets.
set -euo pipefail
ZIP_PATH="${1:-}"
if [ -z "$ZIP_PATH" ]; then
    echo "Usage: pnpm refresh:zip ARCHIVE [--check-only] [--allow-removals] [--allow-quality-issues]" >&2
    exit 1
fi
shift
CHECK_ONLY=false
ALLOW_REMOVALS=()
ALLOW_QUALITY_ISSUES=false
for option in "$@"; do
    case "$option" in
        --check-only) CHECK_ONLY=true ;;
        --allow-removals) ALLOW_REMOVALS=(--allow-removals) ;;
        --allow-quality-issues) ALLOW_QUALITY_ISSUES=true ;;
        *) echo "Unknown option: $option" >&2; exit 1 ;;
    esac
done
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PACKAGE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
SVGS_DIR="$PACKAGE_DIR/svgs"
ZIP_PATH="$(cd "$(dirname "$ZIP_PATH")" && pwd)/$(basename "$ZIP_PATH")"
[ -f "$ZIP_PATH" ] || { echo "Archive not found: $ZIP_PATH" >&2; exit 1; }
REFRESH_TMP_DIR=$(mktemp -d /tmp/solar-icons-refresh.XXXXXX)
SWAPPED=false
METADATA_EXISTED=false
cleanup() {
    status=$?
    if [ "$status" -ne 0 ] && [ "$SWAPPED" = true ]; then
        rm -rf "$SVGS_DIR"
        mv "$REFRESH_TMP_DIR/previous-svgs" "$SVGS_DIR"
        if [ "$METADATA_EXISTED" = true ]; then
            cp "$REFRESH_TMP_DIR/metadata.json" "$PACKAGE_DIR/src/metadata.json"
        else
            rm -f "$PACKAGE_DIR/src/metadata.json"
        fi
    fi
    rm -rf "$REFRESH_TMP_DIR"
    exit "$status"
}
trap cleanup EXIT
trap 'exit 130' INT
trap 'exit 143' TERM
python3 "$SCRIPT_DIR/validate-figma-zip.py" "$ZIP_PATH" "$REFRESH_TMP_DIR/incoming" "$SVGS_DIR" "${ALLOW_REMOVALS[@]}"
cd "$PACKAGE_DIR"
echo '==> Checking staged SVG visual contracts ...'
if ! SOLAR_SVGS_DIR="$REFRESH_TMP_DIR/incoming/svgs" pnpm check:svg-quality; then
    if [ "$ALLOW_QUALITY_ISSUES" != true ]; then exit 1; fi
    echo 'Diagnostic override: retaining known SVG quality issues.' >&2
fi
echo '==> Checking staged metadata coverage ...'
SOLAR_SVGS_DIR="$REFRESH_TMP_DIR/incoming/svgs" pnpm check:icons-metadata
if [ "$CHECK_ONLY" = true ]; then
    echo 'Validation passed. Production SVGs and metadata are unchanged.'
    exit 0
fi
if [ -f src/metadata.json ]; then
    cp src/metadata.json "$REFRESH_TMP_DIR/metadata.json"
    METADATA_EXISTED=true
fi
mv "$SVGS_DIR" "$REFRESH_TMP_DIR/previous-svgs"
SWAPPED=true
mv "$REFRESH_TMP_DIR/incoming/svgs" "$SVGS_DIR"
pnpm generate:svgs --offline
echo 'Import complete. Source ZIP retained.'
git status --short svgs/ src/metadata.json
