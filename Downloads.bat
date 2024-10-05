@echo off
setlocal
choco install ngrok -y --no-progress
choco install nssm -y --no-progress
curl -s -L -o start.bat https://gitlab.com/chamod12/ngrok-win10-rdp/-/raw/main/start.bat
curl -s -L -o loop.bat https://gitlab.com/chamod12/ngrok-win10-rdp/-/raw/main/loop.bat
curl -s -L -o Acess.bat https://gitlab.com/chamod12/ngrok-win10-rdp/-/raw/main/Acess.bat
curl -s -L -o startaudio.bat https://gitlab.com/chamod12/ngrok-win10-rdp/-/raw/main/Audio.bat
curl -s -L -o wall.bat https://gitlab.com/chamod12/changewallpaper-win10/-/raw/main/wall.bat
curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
pip install pyautogui --quiet
