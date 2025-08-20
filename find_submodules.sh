#!/usr/bin/env bash

#!/usr/bin/env bash
# Generates .gitmodules from existing git subdirectories

set -euo pipefail

# Root directory where to search
ROOT="${1:-.}"

# Output file
GITMODULES="$ROOT/.gitmodules"

# Clear previous .gitmodules
>"$GITMODULES"

# Find all .git directories
while IFS= read -r gitdir; do
	repo_dir=$(dirname "$gitdir")
	# Use relative path from root
	rel_path=$(realpath --relative-to="$ROOT" "$repo_dir")
	# Get remote URL
	url=$(git -C "$repo_dir" config --get remote.origin.url)

	if [[ -n "$url" ]]; then
		echo "[submodule \"$rel_path\"]" >>"$GITMODULES"
		echo "    path = $rel_path" >>"$GITMODULES"
		echo "    url = $url" >>"$GITMODULES"
		echo >>"$GITMODULES"
	fi
done < <(find "$ROOT" -type d -name ".git")

echo "Generated $GITMODULES"
