@echo off
setlocal enableextensions
md %1
endlocal

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n=allowGlobalConfirmation

choco install git go rust python3 terminal gh fzf ffmpeg mpv make

mkdir pog-projects
cd pog-projects

rm -rf "/usr/local/share/ani-cli" "/usr/local/bin/ani-cli" "/usr/local/bin/UI" /usr/local/bin/player_*
gh repo clone pystardust/ani-cli && cd ./ani-cli
cp ./ani-cli /usr/bin
cd .. && rm -rf ./ani-cli

gh repo clone justchokingaround/lobster && cd lobster
cp lobster.sh /usr/bin/lobster && cd .. && rm -rf ./lobster

go install github.com/manga-g/manga-g/cmd/manga-g@latest
go install github.com/ayntgl/discordo@latest
