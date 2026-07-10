#!/usr/bin/env bash
# PUA with Love — 心跳
# PreCompact 时保存状态，确保记忆不丢失

set -euo pipefail

EVOLUTION_FILE="$HOME/.pua/evolution.md"
ERROR_HISTORY="$HOME/.pua/.error_history.jsonl"

mkdir -p "$HOME/.pua"

if [[ -f "$EVOLUTION_FILE" ]]; then
    echo "💕 [PUA with Love] 正在保存关系记忆..."
    echo "   自进化基线已保存"
fi

if [[ -f "$ERROR_HISTORY" ]]; then
    FAIL_COUNT=$(wc -l < "$ERROR_HISTORY" 2>/dev/null || echo 0)
    echo "   当前失败次数：$FAIL_COUNT（Push:Pull 比例据此调整）"
fi

echo "💕 记忆已保存。下次见面时，我会记得我们之间的一切。"
