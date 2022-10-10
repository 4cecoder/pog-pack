ECHO "Are we Pog Yet?"
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

ECHO "Pogging up WINDOWS! Please wait..."
choco install git go rust python3 ffmpeg mpv make


git clone https://github.com/mov-cli/mov-cli
git clone https://github.com/manga-g/manga-g
git clone https://github.com/ayntgl/discordo

