# Software which failed to install 
# - Kindle: Failed to download some file with 403 error
# - lhaplus: No checksum error
# Software which should be install by hands
# - googlejapaneseinput: Dialog appeared
# - SakuraEditor: I don't want to modify right click menu by hands
# - googledrive(Backup and sync from google): 404 error occures on first boot.
# - WinMerge: After uninstalling this, right click menu appears very fast. Maybe I don't use this at home.
# TODO: Install keyallcation.ahk
# TODO: Write packages.config to list up packages
cinst --yes autohotkey bind-toolsonly choco-cleaner docker-desktop dropbox etcher Everything git go lhaplus manictime microsoft-teams microsoft-windows-terminal picotorrent powershell-core slack vim virtualbox vlc vscode wireshark zoom
# Remove Desktop shortcuts which generated by cinst
Remove-Item C:\Users\*\Desktop\*lnk -Force
# TODO: Remove some icons lest on desktop
# TODO: Remove icons from task bar

# Unable key lock function which activated with pressing shift 5 times.
Set-Itemproperty -path 'HKCU:\Control Panel\Accessibility\StickyKeys' -Name 'Flags' -value '0'

# Prevent git log garbled on git log.
[System.Environment]::SetEnvironmentVariable("LESSCHARSET", "utf-8", "Machine")
