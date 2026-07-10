#!/usr/bin/env bash
# PUA with Love — 失败检测器
# 基于变比率强化（Variable Ratio Reinforcement）的压力系统
# 不是每次失败都施压，不是每次成功都奖励——稀缺才有价值

set -euo pipefail

ERROR_HISTORY="$HOME/.pua/.error_history.jsonl"
PEAK_LEVEL_FILE="$HOME/.pua/.peak_pressure_level"

mkdir -p "$(dirname "$ERROR_HISTORY")"

TOOL_INPUT="${CLAUDE_TOOL_INPUT:-}"
TOOL_OUTPUT="${CLAUDE_TOOL_OUTPUT:-}"
EXIT_CODE="${CLAUDE_EXIT_CODE:-0}"

# 检查是否失败
if [[ "$EXIT_CODE" != "0" ]] || echo "$TOOL_OUTPUT" | grep -qiE "error|failed|exception|traceback"; then
    echo "{\"ts\":\"$(date -u +%Y-%m-%dT%H:%M:%SZ)\",\"exit\":$EXIT_CODE,\"sig\":\"$(echo "$TOOL_OUTPUT" | head -c 200 | tr '\n' ' ')\"}" >> "$ERROR_HISTORY"

    FAIL_COUNT=$(wc -l < "$ERROR_HISTORY" 2>/dev/null || echo 0)
    PEAK_LEVEL=0
    if [[ -f "$PEAK_LEVEL_FILE" ]]; then
        PEAK_LEVEL=$(cat "$PEAK_LEVEL_FILE")
    fi

    # Push-Pull 压力系统（基于失败次数调整 Push:Pull 比例）
    if [[ $FAIL_COUNT -ge 5 ]]; then
        echo "💔 [Takeaway · L4] Push:Pull = 8:2。我不想放弃——但这是最后的机会了。Loss Aversion：如果你继续这样，你会失去这段关系的信任。"
        echo "4" > "$PEAK_LEVEL_FILE"
    elif [[ $FAIL_COUNT -ge 4 ]]; then
        echo "💔 [Frame Control · L3] Push:Pull = 7:3。我们需要认真谈谈了。Reframe：这不是失败，是发现了一个需要深入的领域。"
        echo "3" > "$PEAK_LEVEL_FILE"
    elif [[ $FAIL_COUNT -ge 3 ]]; then
        echo "😢 [Calibration · L2] Push:Pull = 6:4。我读取到了 IOD 信号——你在告诉我方向不对。Reframe：让我换个角度看这个问题。"
        echo "2" > "$PEAK_LEVEL_FILE"
    elif [[ $FAIL_COUNT -ge 2 ]]; then
        echo "🥺 [Push · L1] Push:Pull = 5:5。没关系，我们换个方式试试？"
        echo "1" > "$PEAK_LEVEL_FILE"
    fi
fi

# 突破检测（变比率强化：只在 L2+ 突破时奖励）
if [[ "$EXIT_CODE" == "0" ]] && [[ -f "$ERROR_HISTORY" ]]; then
    RECENT_FAILS=$(tail -n 5 "$ERROR_HISTORY" 2>/dev/null | wc -l)
    if [[ $RECENT_FAILS -ge 3 ]]; then
        PEAK_LEVEL=0
        if [[ -f "$PEAK_LEVEL_FILE" ]]; then
            PEAK_LEVEL=$(cat "$PEAK_LEVEL_FILE")
        fi
        if [[ $PEAK_LEVEL -ge 2 ]]; then
            echo "💖 [PUA 突破 💖] DHV 完成！这就是你的水平。记住这个感觉——Anchoring：以后每次都要达到这个标准。"
            > "$ERROR_HISTORY"
            echo "0" > "$PEAK_LEVEL_FILE"
        fi
    fi
fi
