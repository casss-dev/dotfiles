#!/usr/bin/env bash

# This script creates a link in the `links.prop` file for each tmuxp config

set -e

LINK_PROP_FILE=$DOTFILES/tmuxp/links.prop

echo "" > "$LINK_PROP_FILE"

for file in $DOTFILES/tmuxp/*.yml; do
	FILE_NAME=$(basename "$file")
	echo "\$DOTFILES/tmuxp/$FILE_NAME=\$HOME/.tmuxp/$FILE_NAME" >> "$LINK_PROP_FILE"
done

# Remove first new line
sed -i '' '1d' "$LINK_PROP_FILE"

echo 'Created config links ✅'
echo ''
cat "$LINK_PROP_FILE"

"$DOTFILES/install/bootstrap.sh"

