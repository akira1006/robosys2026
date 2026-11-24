# textコマンド
![test](https://github.com/<Hikaru Sawaya>/robosys2026/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ英文を解析し、英単語の出現回数を表示するコマンドです。
単語は大文字・小文字を区別せずに集計します。また、1文字の単語（a,iなど）は集計対象外です。

## 使用例
echo "apple apple orange" | ./text

##　結果
apple 2
orange 1
## 必要なソフトウェア
- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境
- Ubuntu 24.04 LTS

## ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2026 Hikaru Sawaya
