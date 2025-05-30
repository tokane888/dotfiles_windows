# Windows初期化手順

- windows proに変更
  - win+i => システム => バージョン情報
  - プロダクトキーの変更またはWindowsのエディションをアップグレード
  - "Microsoft storeへ移動"
- chromeをブラウザからインストール
- powershellからchocolateyインストール
  - win+x => win+a
  - Set-ExecutionPolicy Bypass
  - Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
- chocolateyからinstall.ps1記載の必要なパッケージインストール
  - teamsは職場の場合、personalとは別のパッケージが必要になるので注意
- powershell再起動
- 旧PCからssh関連情報をscpなどでコピー
- windowsの機能の追加で下記を有効化
  - Hyper-v
  - Linux何とか
  - 仮想化
- 下記形式のコマンド実行でubuntuインストール(ver部分は修正)
  - wsl --install -d Ubuntu-22.04
- windows再起動
- caps2ctrlダウンロードして実行
  - なぜか入れ替わらなかったので、最初からregistry書き換えが安定かも
- TODO: ahk scriptを自動でgit cloneしてインストールするスクリプト追加
- TODO: .vimrc, .gitconfigをdotfiles-common git repositoryに追加し、git cloneして使用可能にする
  - 実体を置く場所からショートカット張る
- sakura editor ブラウザからダウンロードしてインストール
  - chocolateyだと右クリックメニューを手動で編集する必要が生じるので使用しない
- 仮想ディスプレイ作成
  - win + tabで作成
- 仮想ディスプレイ移動アニメーション無効化
  - 設定 > システム > バージョン情報 > システムの詳細設定 > パフォーマンスの「設定」 > "Windows内のアニメーション コントロールと要素"を無効化
- 下記のchrome拡張追加
  - empty new tab page
  - go back with backspace
  - ublockorigin
  - user javascript and css
  - vimium
  - ブラウザ録画用の拡張
    - screen recorder for google chrome
    - アプリの操作説明を受ける際は画面全体を録画して良いか確認
- ウィンドウが勝手にグループ化されるのを防ぐ
  - Windows の設定を開き、「システム」→「マルチタスク」を開く
  - 「ウィンドウのスナップ」項目を展開
  - 「タスクビューのタスクバーアプリの上にマウスカーソルを移動したとき、そして Alt+Tab を押したときに、スナップしたウィンドウを表示する」のチェックを外す
- cliborホットキーをalt2回押下に変更
- PowerToysの"マウスの検索"無効化
