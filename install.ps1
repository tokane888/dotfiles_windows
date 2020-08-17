# kindleはinstall失敗(403 error)したのでブラウザからinstall
# googlejapaneseinputはダイアログが出るので手動で入れる
# cinst --yes googlejapanese input
# TODO: packages.config？使う方法が良いのかもしれないので調査
cinst --yes autohotkey bind-toolsonly docker-desktop dropbox etcher Everything git googledrive go lhaplus manictime microsoft-teams microsoft-windows-terminal powershell-core SakuraEditor slack vim virtualbox vlc vscode winmerge wireshark zoom

reg add HKLM\SOFTWARE\Classes\*\shell\sakuraeditor /d "SAKURAで開く(&E)"
reg add HKLM\SOFTWARE\Classes\*\shell\sakuraeditor\command /t REG_SZ /d "C:\Program Files (x86)\sakura\sakura.exe %1"

# shift5回で固定キー有効化される機能を無効化
Set-Itemproperty -path 'HKCU:\Control Panel\Accessibility\StickyKeys' -Name 'Flags' -value '0'

# git-bashでのgit log参照時などの文字化け対策
[System.Environment]::SetEnvironmentVariable("LESSCHARSET", "utf-8", "Machine")