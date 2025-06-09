#!/usr/bin/env bash
# Usage: ./apply-snippet.sh path/to/file <<EOF
# <paste your snippet here>
# EOF
cat > "$1" <<EOF
$(</dev/stdin)
EOF
git add "$1" && git commit -m "🔧 Apply snippet to $1" && git push
