ECHO "Are we Pog Yet?"
@echo off
setlocal enableextensions
md %1
endlocal
ECHO "Scoop..."
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
ECHO "CHOCOLATE..."
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
refreshenv
choco feature enable -n=allowGlobalConfirmation

ECHO "Pogging up WINDOWS! Please wait..."
choco install git go rust python3 terminal gh fzf ffmpeg mpv make

mkdir pog-projects
cd pog-projects
ECHO "Fetching the poggiest projects..."

rm -rf "/usr/local/share/ani-cli" "/usr/local/bin/ani-cli" "/usr/local/bin/UI" /usr/local/bin/player_*
gh repo clone pystardust/ani-cli && cd ./ani-cli
cp ./ani-cli /usr/bin
cd .. && rm -rf ./ani-cli

git clone https://github.com/justchokingaround/lobster && cd lobster
cp lobster.sh /usr/bin/lobster && cd .. && rm -rf ./lobster

gh repo clone manga-g/manga-g
cd ./manga-g/
go build -o manga-g ./cmd/manga-g/main.go && cp ./manga-g /usr/bin
cd .. && rm -rf manga-g

gh repo clone ayntgl/discordo
cd ./discordo
make build && cp ./discordo /usr/bin && cd .. && rm -rf ./discordo
