# hanabi-design-rules

Claude Code でデザインを作るとき「なんかAIっぽい」「詰まってる」「カラフルすぎる」を防ぐためのスキルです。

HP・LP・スライド制作で実践しているデザイン判断基準を、Claude Code が自動で読み込めるスキル形式にまとめています。

**Before / After デモ:** https://teppay0v0.github.io/hanabi-design-rules/
**カラーを選ぶ（メイン→サブ提案ツール）:** https://teppay0v0.github.io/hanabi-design-rules/color.html

---

## インストール（ワンコマンド）

ターミナルにこれを貼るだけです。

```bash
curl -fsSL https://raw.githubusercontent.com/Teppay0v0/hanabi-design-rules/main/install.sh | bash
```

`~/.claude/skills/hanabi-design-rules/` に配置されます。
更新したいときも、同じコマンドをもう一度実行するだけです。

### 手動でインストールする場合

```bash
git clone https://github.com/Teppay0v0/hanabi-design-rules.git ~/.claude/skills/hanabi-design-rules
```

---

## 使い方

インストール後は、Claude Code に普通に話しかけるだけで自動的に適用されます。

```
「このサービスのLPを作って」
「会社紹介のスライドを作って」
「HPのトップページを作って」
```

Claude が自動でこのスキルを読み込み、ルールに沿ったデザインを出力します。

---

## 何が変わるのか

| 禁止 | 代わりに |
|------|---------|
| 絵文字 | モノラインSVGアイコン |
| イタリック | サイズ・ウェイト・字間で強調 |
| 高彩度のベタ塗り背景・グラデーション | 白とwashを交互に塗り分け |
| ドロップシャドウ | 細罫で奥行きを表現 |
| 角丸カード | 直角のみ |
| 3色以上の主張する配色 | メイン＋サブの2色（＋インク・グレー） |
| 大型CTAボタン | テキストリンクのみ |
| ストック写真 | タイポグラフィ・数字・線で構成 |

根本の考え方は「**引くこと**」。AIは足すのが得意だから、人が引く判断を持ち込む。
余白は「何もない空間」ではなく「機能している空間」。

詳細ルールは [SKILL.md](SKILL.md) を参照してください。

---

## 同梱物

```
hanabi-design-rules/
├── SKILL.md             ← ルール本体（Claude が読む）
├── README.md            ← このファイル
└── references/
    └── lp-starter.html  ← ルール実装済みの動くLPテンプレート
```

`references/lp-starter.html` は全ルール実装済みのLP骨格です。
`:root` の `--accent` をブランド色に変えるだけで全体のトーンが変わります。

---

## 動作確認済み環境

- Claude Code（CLI / Desktop App）
- macOS
