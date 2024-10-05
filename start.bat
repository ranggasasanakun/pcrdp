@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk"
del /f "C:\Users\Public\Desktop\Unity Hub.lnk"
net user runneradmin TheDisa1a
net config server /srvcomment:"Windows Server By Disala"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F
net user TheDisala TheDisa1a /add >nul
net localgroup administrators TheDisala /add >nul
net user installer /delete
ICACLS C:\Windows\Temp /grant TheDisala:F >nul
ICACLS C:\Windows\installer /grant TheDisala:F >nul
diskperf -Y >nul 
python -c "import pyautogui as pag; pag.click(876, 21, duration=2)"
python -c "import pyautogui as pag; pag.click(906, 73, duration=2)"
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Username: TheDisala / runneradmin
echo Password: TheDisa1a
echo You can login now!
