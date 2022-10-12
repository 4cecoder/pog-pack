ECHO "Are we Pog Yet?"
@echo off
setlocal enableextensions
md %1
endlocal

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
refreshenv

choco feature enable -n=allowGlobalConfirmation

ECHO "Pogging up WINDOWS! Please wait..."
choco install git go rust python3 fzf ffmpeg mpv make

mkdir pog-projects
cd pog-projects
ECHO "Fetching the poggiest projects..."

rm -rf "/usr/local/share/ani-cli" "/usr/local/bin/ani-cli" "/usr/local/bin/UI" /usr/local/bin/player_*
git clone "https://github.com/pystardust/ani-cli.git" && cd ./ani-cli
cp ./ani-cli /usr/bin
cd .. && rm -rf ./ani-cli

git clone https://github.com/mov-cli/mov-cli

git clone https://github.com/manga-g/manga-g
cd ./manga-g/cmd/manga-g/
go build && cp ./manga-g /usr/bin
cd ../../../ && rm -rf manga-g

git clone https://github.com/ayntgl/discordo
cd ./discordo
make build && cp ./discordo /usr/bin && cd .. && rm -rf ./discordo
