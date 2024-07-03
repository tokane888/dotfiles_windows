# Windows初期化手順

* windows proに変更
    * win+i => システム => バージョン情報
    * プロダクトキーの変更またはWindowsのエディションをアップグレード
    * "Microsoft storeへ移動"
* chromeをブラウザからインストール
* powershellからchocolateyインストール
    * win+x => win+a
    * Set-ExecutionPolicy Bypass
    * Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
* powershell再起動
* 旧PCからssh関連情報をscpなどでコピー
* windowsの機能の追加で下記を有効化
  * Hyper-v
  * Linux何とか
  * 仮想化
* 下記形式のコマンド実行でubuntuインストール(ver部分は修正)
  * wsl --install -d Ubuntu-22.04
* windows再起動
* caps2ctrlダウンロードして実行
* TODO: ahk scriptを自動でgit cloneしてインストールするスクリプト追加
* TODO: .vimrc, .gitconfigをdotfiles-common git repositoryに追加し、git cloneして使用可能にする
    * 実体を置く場所からショートカット張る
* sakura editor ブラウザからダウンロードしてインストール
    * chocolateyだと右クリックメニューを手動で編集する必要が生じるので使用しない
* lhaplusブラウザからインストール
    * chocolateyだとchecksumエラー
* winメニューからgoogle drive起動して設定して同期
