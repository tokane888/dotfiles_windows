# kindle��install���s(403 error)�����̂Ńu���E�U����install
# googlejapaneseinput�̓_�C�A���O���o��̂Ŏ蓮�œ����
# cinst --yes googlejapanese input
# TODO: packages.config�H�g�����@���ǂ��̂�������Ȃ��̂Œ���
cinst --yes autohotkey bind-toolsonly docker-desktop dropbox Everything git googledrive go manictime microsoft-teams microsoft-windows-terminal powershell-core SakuraEditor slack vim virtualbox vlc vscode winmerge wireshark zoom

reg add HKLM\SOFTWARE\Classes\*\shell\sakuraeditor /d "SAKURA�ŊJ��(&E)"
reg add HKLM\SOFTWARE\Classes\*\shell\sakuraeditor\command /t REG_SZ /d "C:\Program Files (x86)\sakura\sakura.exe %1"

Set-Itemproperty -path 'HKCU:\Control Panel\Accessibility\StickyKeys' -Name 'Flags' -value '0'

# git-bash�ł�git log�Q�Ǝ��Ȃǂ̕��������΍�
[System.Environment]::SetEnvironmentVariable("LESSCHARSET", "utf-8", "Machine")