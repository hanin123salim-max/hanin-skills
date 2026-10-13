#!/usr/bin/env bash
# يجلب المهارات الخارجية الرسمية بأحدث نسخة من GitHub.
# الاستخدام:  bash external/sync.sh <name> [<name> ...]   أو   bash external/sync.sh all
# الأسماء: remotion hyperframes iart-motion iart-ad iart-explainer iart-reels video-use elevenlabs
set -euo pipefail

DEST="${SKILLS_CACHE:-$HOME/.hanin-skills-external}"
mkdir -p "$DEST"

# name|repo|subdir (subdir فارغ = المستودع كاملًا)
SOURCES=(
  "remotion|remotion-dev/remotion|packages/skills"
  "hyperframes|heygen-com/hyperframes|skills"
  "iart-motion|iart-ai/motion-design-skills|"
  "iart-ad|iart-ai/ad-video-skills|"
  "iart-explainer|iart-ai/explainer-video-skills|"
  "iart-reels|iart-ai/tiktok-video-skills|"
  "video-use|browser-use/video-use|"
  "elevenlabs|elevenlabs/skills|"
)

fetch() {
  local name="$1" repo="$2" sub="$3" dir="$DEST/$1"
  if [ -d "$dir/.git" ]; then
    echo "↻ تحديث $name"
    GIT_LFS_SKIP_SMUDGE=1 git -C "$dir" pull --quiet --depth 1 || echo "⚠ تعذّر تحديث $name — تُستخدم النسخة الموجودة"
  else
    echo "⬇ جلب $name من $repo"
    if [ -n "$sub" ]; then
      GIT_LFS_SKIP_SMUDGE=1 git clone --quiet --depth 1 --filter=blob:none --sparse "https://github.com/$repo.git" "$dir"
      git -C "$dir" sparse-checkout set "$sub"
    else
      GIT_LFS_SKIP_SMUDGE=1 git clone --quiet --depth 1 "https://github.com/$repo.git" "$dir"
    fi
  fi
  echo "✓ $name ← $dir/${sub}"
  find "$dir/${sub}" -name SKILL.md -not -path '*/node_modules/*' | head -40 | sed 's/^/   /'
}

[ $# -eq 0 ] && { echo "حدّد اسمًا أو all"; exit 1; }
for want in "$@"; do
  found=0
  for row in "${SOURCES[@]}"; do
    IFS='|' read -r name repo sub <<<"$row"
    if [ "$want" = "all" ] || [ "$want" = "$name" ]; then fetch "$name" "$repo" "$sub"; found=1; fi
  done
  [ $found -eq 0 ] && echo "✗ اسم غير معروف: $want"
done
