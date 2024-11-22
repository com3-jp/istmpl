# istmpl

## 初動

### サーバーの初期設定

1. それぞれのサーバーの .bashrc に環境変数 SERVER_ID を追加
  - export SERVER_ID=s1
  - s2
  - s4

### Git の初期化設定

1. script/init-git.sh を実行
2. 出力された公開鍵をリポジトリに登録

### GitHub リポジトリの初期化設定

1. script/init-github.sh を実行
2. サーバーに main ブランチが Pull されていることを確認

### ツールのインストール

1.  script/init-tools.sh を実行

### 必要なファイルをリポジトリへ登録

1. 設定ファイル類のパスが Taskfile に記載されたものと一致, 不足がないことを確認
2. $ task get-conf を実行

## MySQL

### 設定ファイル

下記優先度で読み込まれる.

1. `/etc/mysql/my.cnf`
2. `~/.my.cnf`
3. `/usr/etc/my.cnf`