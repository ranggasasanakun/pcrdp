@echo off
setlocal
choco install ngrok -y --no-progress
choco install nssm -y --no-progress
curl -s -L -o start.bat https://gitlab.com/raposabrty/pcrdp/-/raw/main/start.bat
curl -s -L -o loop.bat https://gitlab.com/raposabrty/pcrdp/-/raw/main/loop.bat
curl -s -L -o Acess.bat https://gitlab.com/raposabrty/pcrdp/-/raw/main/Acess.bat
curl -s -L -o startaudio.bat https://gitlab.com/raposabrty/pcrdp/-/raw/main/Audio.bat
curl -s -L -o wall.bat https://gitlab.com/raposabrty/pcrdp/-/raw/main/wall.bat
curl -s -L -o C:\Users\Public\Desktop\Telegram.exe https://telegram.org/dl/desktop/win64
curl -s -L -o C:\Users\Public\Desktop\roblox-studio-1-6-0-48964.exe https://dw.uptodown.net/dwn/UkKDyTN23xAVVygT1m9mKN8r2dlbNVbdsFN7IUUsIEffRgefTlp80XTld5CeaTh-CTDlw5_gtLDpkxcjdNVWEmrKvWeJsf_4Up54ElWSI-uEFB7TCYwrzqQZMsika92Z/odJH1eMqEwS90F4BWJktka-_qZ3Ra9mKSUND4LNo857SmSe4uwc3jDyobNFzhIzUq4W0jlogCkkJeGmKYNTIQI-14sQZQE3OMh6vfyzJqeR4cw3EGeyAZApRsujeqt31/Za_2EfZ23fCSPsxsIrIOwiot9H1PuLwuqB921cQKm8zkV5XLn0DXcaptByrazZeQmL6JhGPm70_JPq9XmP52MQ3QSLIa-TNxSnguLzKY4tI=/roblox-studio-1-6-0-48964.exe
curl -s -L -o C:\Users\Public\Desktop\Winrar.exe https://www.rarlab.com/rar/winrar-x64-621.exe
powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"
C:\Users\Public\Desktop\Telegram.exe /VERYSILENT /NORESTART
del C:\Users\Public\Desktop\Telegram.exe
C:\Users\Public\Desktop\Winrar.exe /S
del C:\Users\Public\Desktop\Winrar.exe
pip install pyautogui --quiet
