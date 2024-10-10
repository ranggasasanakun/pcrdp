import pyautogui as pag
import time
import requests
import os

# Define the coordinates and use the `actions` list
actions = [
    (266, 287, 4),  # unattended access
    (266, 287, 1),  # unattended access
    (516, 405, 4),  # install (wait 15sec)
    (437, 303, 4),  # tic launch avica
    (249, 203, 4),  # allow rdp
    (667, 567, 4),  # finish
    (667, 567, 1),  # finish
    (447, 286, 4),  # ss id & upload (launch iperius)
]


title = 'Iperius Remote ID | The Disala'
show = 'Iperius Remote ID'
description = 'Iperius Remote Pass : TheDisa1a'
img_filename = 'IperiusRemoteID.png'

# Upload to Gofile.io
def upload_image_to_gofile(img_filename):
    url = 'https://store1.gofile.io/contents/uploadfile'
    files = {'file': open(img_filename, 'rb')}
    response = requests.post(url, files=files)
    if response.status_code == 200:
        result = response.json()
        if result['status'] == 'ok':
            downloadPage = result['data']['downloadPage']
            # Open the show.bat file in append mode and write the image information
            with open('show.bat', 'a') as bat_file:
                bat_file.write(f'\necho {show} : {downloadPage}')
                bat_file.write(f'\necho {description}')
            return downloadPage
        else:
            print("Error:", result.get('status'))
            return None
    else:
        print("Error:", response.status_code)
        return None

for x, y, duration in actions:
    if (x, y, duration) == (677, 570, 4):
        pag.click(x, y, duration=duration)
        time.sleep(10)
    elif (x, y, duration) == (261, 306, 4):
        pag.click(x, y, duration=duration)
        pag.typewrite(password)
    elif (x, y, duration) == (671, 567, 4):
        pag.click(x, y, duration=duration)
        time.sleep(10)
    elif (x, y, duration) == (667, 567, 4):
        pag.click(x, y, duration=duration)
        time.sleep(10)
    elif (x, y, duration) == (447, 286, 4):
        os.system('"C:\\Program Files x86\\Avica\\Avica.exe"')
        time.sleep(5)
        pag.screenshot().save(img_filename)
        gofile_link = upload_image_to_gofile(img_filename)
        if gofile_link:
            print("Image uploaded successfully.")
    else:
        pag.click(x, y, duration=duration)

print('Done!')