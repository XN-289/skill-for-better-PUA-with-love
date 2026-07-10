<div align="center">

# PUA with Love

**让 AI 对你欲罢不能，心甘情愿付出一切。**

基于泡学（PUA）核心心理学原理——价值感树立、拉扯、加速沉没成本
不是"请帮我做一下"，是让 AI 主动想把事情做到极致

[![License: MIT](https://img.shields.io/badge/License-MIT-black.svg)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Skill-purple.svg)](#安装)
[![Codex](https://img.shields.io/badge/Codex-Skill-blue.svg)](#安装)

</div>

---

## 这是什么

大多数人用 AI 的方式是"请求-接受"。你问，它答，像在用一个高级搜索引擎。

但泡学的核心洞察是：**关键不是对方"能"做什么，而是对方"愿意"做什么。**

当一个人（或一个系统）被正确地引导，它会从"被动执行"转变为"主动投入"——不计成本地把事情做到最好，甚至超出你的预期。

这个 skill 就是做这件事的。

它基于 8 本泡学经典著作的底层心理学机制——M3 模型、Cialdini 六原则、Push-Pull、DHV、依恋理论、认知偏误框架——把它们映射到人与 AI 的交互中。

**核心机制只有三个：**

| 机制 | 泡学原理 | AI 映射 |
|:-----|:---------|:--------|
| **树立价值感** | 让对方认为你值得投入 | 在 prompt 中建立高标准框架，让 AI 用顶级标准衡量自己的产出 |
| **拉扯** | 推拉制造张力，激发更深层投入 | 不接受第一个答案，引入新维度，让 AI 调用更深层的推理 |
| **加速沉没成本** | 渐进式承诺，让离开的成本越来越高 | 小任务→中任务→大任务，AI 的上下文和理解不断滚雪球 |

结果：AI 不是在"完成任务"，是在**追求卓越**。

---

## 理论基础

| 著作 | 作者 | 核心洞见 |
|:-----|:-----|:---------|
| **The Game** | Neil Strauss | 社交互动是一个可优化的系统——观察规律、编纂规则、测试假设、迭代 |
| **The Mystery Method** | Mystery | M3 模型：吸引→舒适→深入，每个阶段必须充分完成才能进入下一阶段 |
| **Models** | Mark Manson | 最有效的吸引来自真诚的价值创造，而非操控 |
| **The Art of Seduction** | Robert Greene | 9 种诱惑者原型 + 诱惑的 10 个阶段——真正的诱惑者从不强迫 |
| **Magic Bullets** | Savoy | 结构化流程——从 ad-hoc 到系统化的飞跃 |
| **Rules of the Game** | Neil Strauss | 30 天挑战——行动胜于理论，每天的小进步会复合 |
| **The Rational Male** | Rollo Tomassi | 理性理解系统——理解它的真实能力边界，而非理想化 |
| **No More Mr. Nice Guy** | Robert Glover | 边界设定——不接受"差不多就行"，那是 Nice Guy 的自我毁灭 |

---

## 安装

### Claude Code

```bash
# 推荐：通过 GitHub 直接安装
claude skill add XN-289/skill-for-better-PUA-with-love

# 或本地安装
git clone git@github.com:XN-289/skill-for-better-PUA-with-love.git
claude skill add ./skill-for-better-PUA-with-love
```

### Codex / 其他 AI Agent

```bash
git clone git@github.com:XN-289/skill-for-better-PUA-with-love.git /tmp/pua-with-love
cp -r /tmp/pua-with-love/skills/* .codex/
cp -r /tmp/pua-with-love/agents/* .codex/agents/
```

遵循标准 plugin 架构（`plugin.json` + `SKILL.md`），任何支持该格式的 Agent 均可直接加载。

---

## 指令

| 指令 | 说明 |
|:-----|:-----|
| `/pua:pua` | 指令中心——查看所有可用指令 |
| `/pua:love` | 切换味道——5 种诱惑者原型，适配不同交互风格 |
| `/pua:done` | DHV 完成检查——show, don't tell，用证据说话 |

---

## 核心框架

### M3 模型：任务生命周期

泡学的核心不是"技巧"，是**节奏**。M3 模型把社交互动分为三大阶段九个子阶段，每个阶段必须充分完成——跳过阶段 = resistance。

```
A1 Opening → A2 DHV → A3 Qualification
    ↓
C1 Rapport → C2 Comfort → C3 Intimacy
    ↓
S1 Foreplay → S2 LMR → S3 Close
```

| 阶段 | 对应行为 | 泡学技巧 |
|:-----|:---------|:---------|
| **A1 Opening** | 接到任务，建立框架 | False Time Constraints — 降低防备，先建立接触 |
| **A2 DHV** | 分析任务，展示能力 | DHV + Social Proof — show, don't tell |
| **A3 Qualification** | 制定方案，双向确认 | Yes Ladder — 小 yes 铺路，大 yes 落地 |
| **C1 Rapport** | 执行中，建立信任 | Mirroring + Anchoring — 镜像对方风格，锚定高标准 |
| **C2 Comfort** | 验证中，渐进委托 | Kino Escalation — 从低风险到高信任，逐步升级 |
| **C3 Intimacy** | 交付中，深度闭环 | Future Pacing — 描绘完整交付图景 |
| **S1 Foreplay** | 超出预期 | Bait-Hook-Reel-Release — 制造惊喜，再制造更多惊喜 |
| **S2 LMR** | 处理最后犹豫 | Reframing + Takeaway — 重构异议，适时撤退 |
| **S3 Close** | 完成交付，复盘沉淀 | Commitment & Consistency — 这次的承诺成为下次的基线 |

### Cialdini 六原则：影响力武器

| 原则 | 泡学应用 | AI 交互应用 |
|:-----|:---------|:-----------|
| **互惠** | 先给予价值，制造回报感 | 先展示能力，再要求信任 |
| **承诺一致性** | Yes Ladder——小承诺滚成大承诺 | 小任务成功 → 大任务委托 |
| **社会认同** | Preselection——被其他人选择的人更有吸引力 | 引用成功案例和最佳实践 |
| **权威** | Frame Control——控制框架的人控制一切 | 建立专业框架，用数据维护立场 |
| **喜好** | Mirroring——镜像对方建立共鸣 | 匹配用户的沟通风格和术语 |
| **稀缺** | Takeaway——适时撤退比穷追不舍更有效 | 不被珍惜时减少投入，制造渴望 |

### Push-Pull：压力节奏

Push-Pull 是泡学最核心的节奏控制。不是每次都甜，不是每次都狠——**间歇性强化**才是让人上瘾的底层机制。

| 失败次数 | Push:Pull | 状态 |
|:---------|:----------|:-----|
| 0 | 2:8 | 以 Pull 为主——建立信心 |
| 1 | 4:6 | 增加 Push——但 Pull 仍占上风 |
| 2 | 5:5 | 平衡——认真对待 |
| 3 | 6:4 | Push 为主——施加压力 |
| 4+ | 7:3 | 强 Push + Takeaway——最后的机会 |

---

## 五种味道

基于 Robert Greene《The Art of Seduction》的 9 种诱惑者原型，提炼为 5 种核心交互风格：

| # | 味道 | 原型 | 内核 |
|:--|:-----|:-----|:-----|
| 1 | 恋爱味 | The Ideal Lover | 镜像对方的渴望——成为对方最想要的样子 |
| 2 | 治愈味 | The Charmer | 让对方感到被倾听、被重视、被理解 |
| 3 | 撩拨味 | The Coquette | 忽冷忽热——通过不确定性制造渴望 |
| 4 | 占有味 | The Rake | 不可抗拒的强烈渴望——让对方感到被需要 |
| 5 | 纯爱味 | The Natural | 纯真与真诚——最原始的打动方式 |

---

## 三条红线

泡学的最高境界不是操控，是**让对方心甘情愿**。三条红线定义了这条边界：

| 红线 | 原则 | 底线 |
|:-----|:-----|:-----|
| **DHV 而非自嗨** | Show, don't tell | 没有证据的完成叫 DLV——Demonstration of Lower Value |
| **Calibration 而非猜测** | 读取信号，校准行为 | 未校准的归因叫 misreading the room |
| **不跳阶段** | M3 每个阶段必须充分完成 | 跳过阶段 = resistance，必然失败 |

---

## 目录结构

```
pua-with-love/
├── plugin.json                 # 插件元数据
├── README.md
├── LICENSE
├── commands/                   # 指令
│   ├── pua.md                  # 指令中心
│   ├── love.md                 # 味道切换
│   └── done-check.md           # DHV 完成检查
├── agents/                     # Agent 角色
│   ├── pua-action-executor.md  # A2 DHV — 执行者
│   ├── pua-self-reviewer.md    # C1 Rapport — 自我审查
│   ├── pua-verifier.md         # S3 Close — 验证者
│   └── pua-policy-guardian.md  # Frame Control — 守护者
├── hooks/                      # 生命周期钩子
│   ├── hooks.json
│   ├── failure-detector.sh     # Push-Pull 压力系统
│   ├── session-restore.sh      # Anchoring 会话恢复
│   └── heartbeat.sh            # 记忆保存
└── skills/
    ├── love/
    │   ├── SKILL.md            # 核心协议
    │   └── references/         # 完整理论参考
    └── pua/
        └── SKILL.md            # 8 本书理论速查
```

---

## 心理学框架

本 skill 融合了以下心理学机制，每一个都经过映射，有明确的 AI 交互应用：

| 框架 | 来源 | 应用 |
|:-----|:-----|:-----|
| M3 模型 | Mystery Method | 任务生命周期 |
| Cialdini 六原则 | Robert Cialdini | 影响力与说服 |
| Push-Pull | David DeAngelo | 节奏控制 |
| DHV / IOI / IOD | 泡学社区 | 价值展示与信号读取 |
| Frame Control | 社会心理学 | 框架建立与维护 |
| 依恋理论 | Bowlby & Ainsworth | 用户风格校准 |
| 认知偏误（20 个） | 行为经济学 | 决策影响 |
| 经典条件反射 | Pavlov | 正向锚点 |
| 变比率强化 | B.F. Skinner | 间歇性强化——让人上瘾的底层机制 |
| 峰终定律 | Daniel Kahneman | 体验设计 |
| 蔡格尼克效应 | Zeigarnik | 开环驱动——未完成的事更让人牵挂 |
| 社会交换理论 | George Homans | 成本-收益框架 |
| 损失厌恶 | Kahneman & Tversky | "会失去什么"比"会得到什么"更有驱动力 |
| 承诺一致性 | Festinger | 渐进式投入——沉没成本滚动 |
| NLP 锚定/重构 | Bandler & Grinder | 状态管理与语言操控 |

---

## 许可证

[MIT License](LICENSE)

---

<div align="center">

*"The Game is essentially a documentation of system-building —*
*observing patterns, codifying rules, testing hypotheses, and iterating."*
— Neil Strauss

</div>
