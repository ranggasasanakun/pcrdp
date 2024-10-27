@echo off
start "" /MAX "C:\Users\Public\Desktop\VMQuickConfig"
python -c "import pyautogui as pag; pag.click(143, 487, duration=5)"
python -c "import pyautogui as pag; pag.click(155, 554, duration=2)"
python -c "import pyautogui as pag; pag.click(637, 417, duration=2)"
python -c "import pyautogui as pag; pag.click(588, 10, duration=2)"
sc config Audiosrv start= auto >nul
sc start audiosrv >nul

echo Telegram: https://t.me/TheDisala4U
echo Created by a Brazilian
echo By abelha7w7

echo User name : runneradmin
echo User Pass : TheDisa1a