#!/usr/bin/env bash
# Generates .gitmodules and a script to add submodules from existing git subdirectories

set -euo pipefail

# Root directory where to search
ROOT="${1:-.}"

# Output files
GITMODULES="$ROOT/.gitmodules"
ADDSCRIPT="$ROOT/add_submodules.sh"

# Clear previous files
>"$GITMODULES"
>"$ADDSCRIPT"

# Make add script executable
echo "#!/usr/bin/env bash" >>"$ADDSCRIPT"
echo "set -euo pipefail" >>"$ADDSCRIPT"
echo >>"$ADDSCRIPT"

# Find all .git directories
while IFS= read -r gitdir; do
	repo_dir=$(dirname "$gitdir")
	rel_path=$(realpath --relative-to="$ROOT" "$repo_dir")
	url=$(git -C "$repo_dir" config --get remote.origin.url)

	if [[ -n "$url" ]]; then
		# Write to .gitmodules
		echo "[submodule \"$rel_path\"]" >>"$GITMODULES"
		echo "    path = $rel_path" >>"$GITMODULES"
		echo "    url = $url" >>"$GITMODULES"
		echo >>"$GITMODULES"

		# Write the git submodule add command
		echo "git submodule add \"$url\" \"$rel_path\"" >>"$ADDSCRIPT"
	fi
done < <(find "$ROOT" -type d -name ".git")

# Make the add script executable
chmod +x "$ADDSCRIPT"

echo "Generated $GITMODULES and $ADDSCRIPT"
