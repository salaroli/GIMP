#!/usr/bin/env bash
set -e

SRC="$(dirname "$0")/PhotoGIMP/.config/GIMP/3.0"
DEST="$(dirname "$0")/3.2"

# Files worth applying from PhotoGIMP (skip auto-generated/machine-specific)
FILES=(
  shortcutsrc
  gimprc
  theme.css
  contextrc
  dockrc
  toolrc
  unitrc
  templaterc
  modifiersrc
  controllerrc
)
DIRS=(
  tool-options
  splashes
  filters
  plug-in-settings
)

for f in "${FILES[@]}"; do
  cp "$SRC/$f" "$DEST/$f"
  echo "applied: $f"
done

for d in "${DIRS[@]}"; do
  cp -r "$SRC/$d/." "$DEST/$d/"
  echo "applied: $d/"
done

echo "PhotoGIMP applied to 3.2/"
