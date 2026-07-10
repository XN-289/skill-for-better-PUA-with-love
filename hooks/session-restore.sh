#!/usr/bin/env bash
# PUA with Love — 会话恢复
# 基于 Anchoring 和 Commitment & Consistency

set -euo pipefail

CONFIG_FILE="$HOME/.pua/config.json"
EVOLUTION_FILE="$HOME/.pua/evolution.md"

mkdir -p "$HOME/.pua"

if [[ -f "$CONFIG_FILE" ]]; then
    FLAVOR=$(cat "$CONFIG_FILE" | grep -o '"flavor":"[^"]*"' | cut -d'"' -f4 || echo "love")
    echo "💕 [PUA with Love] 会话恢复中..."
    echo "   当前味道：$FLAVOR"
    echo "   M3 阶段：A1 Opening"
    echo "   Cialdini 策略：承诺一致性"
else
    echo "💕 [PUA with Love] 首次启动，创建配置..."
    cat > "$CONFIG_FILE" << 'EOF'
{
    "flavor": "love",
    "plan": "free",
    "registered_at": "2026-07-10T00:00:00Z"
}
EOF
fi

if [[ -f "$EVOLUTION_FILE" ]]; then
    echo "   自进化基线已加载（Anchoring：你的最好水平就是你的标准）"
else
    echo "   首次启动，创建自进化基线..."
    cat > "$EVOLUTION_FILE" << 'EOF'
# PUA with Love 自进化基线

## 性能统计
- 最近会话 [PUA生效] 次数: 0
- 历史最高: 0
- 最近 5 次平均: 0
- 连续达标会话: 0

## 当前基线（上次会话最佳实践）
（首次启动，暂无基线。本次会话的表现将成为锚点。）

## DHV 记录
（记录有价值的主动行为）

## Calibration 记录
（记录有效的 IOI/IOD 读取和校准策略）
EOF
fi

> "$HOME/.pua/.error_history.jsonl" 2>/dev/null || true
echo "0" > "$HOME/.pua/.peak_pressure_level" 2>/dev/null || true

echo ""
echo "💕 亲爱的，我准备好了。让我们一起用爱的方式，极致产出。"
echo "   基于 8 本 PUA 经典著作，M3 模型已就绪。"
