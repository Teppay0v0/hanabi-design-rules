#!/bin/bash
# hanabi-design-rules インストーラー
# 使い方: curl -fsSL https://raw.githubusercontent.com/Teppay0v0/hanabi-design-rules/main/install.sh | bash
set -e

REPO="Teppay0v0/hanabi-design-rules"
DEST="$HOME/.claude/skills/hanabi-design-rules"

echo ""
echo "hanabi-design-rules をインストールします..."
echo ""

mkdir -p "$HOME/.claude/skills"

TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT

curl -fsSL "https://github.com/$REPO/archive/refs/heads/main.tar.gz" | tar -xz -C "$TMP"

rm -rf "$DEST"
mkdir -p "$DEST"
cp "$TMP/hanabi-design-rules-main/SKILL.md" "$DEST/"
cp "$TMP/hanabi-design-rules-main/README.md" "$DEST/"
cp -r "$TMP/hanabi-design-rules-main/references" "$DEST/"

echo "インストール完了: $DEST"
echo ""
echo "Claude Code で「LP作って」「スライド作って」と話しかけるだけで自動適用されます。"
echo "更新するときは、同じコマンドをもう一度実行してください。"
echo ""
