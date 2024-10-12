import pyautogui as pag
import time
import requests
import os

# Define actions with coordinates and duration
actions = [
    (516, 405, 4),  # install (wait 15sec)
    (50, 100, 1),   # tic launch avica
    (249, 203, 4),  # allow rdp
    (249, 203, 4),  # allow rdp 2
    (249, 203, 4),  # allow rdp 3
    (249, 203, 4),  # allow rdp 4
    (447, 286, 4),  # ss id & upload (launch avica)
]

# Give time to focus on the target application
time.sleep(10)

# Credentials and upload information
img_filename = 'AvicaRemoteID.png'

# Upload to Gofile.io
def upload_image_to_gofile(img_filename):
    url = 'https://store1.gofile.io/uploadFile'
    try:
        with open(img_filename, 'rb') as img_file:
            files = {'file': img_file}
            response = requests.post(url, files=files)
            response.raise_for_status()  # Throws error for HTTP issues
            result = response.json()

            if result['status'] == 'ok':
                download_page = result['data']['downloadPage']
                with open('show.bat', 'a') as bat_file:
                    bat_file.write(f'\necho Avica Remote ID And Password: {download_page}')
                    bat_file.write(f'\necho By abelha7w7')
                    bat_file.write(f'\necho Made by a Brazilian 🇧🇷')
                return download_page
            else:
                print("Upload error:", result.get('status'))
                return None
    except Exception as e:
        print(f"Failed to upload image: {e}")
        return None
    
    # Launch Avica and upload screenshot
    if (x, y) == (447, 286):  
        os.system('"C:\\Program Files x86\\Avica\\Avica.exe"')
        time.sleep(5)
        pag.screenshot().save(img_filename)
        gofile_link = upload_image_to_gofile(img_filename)
        if gofile_link:
            print(f"Image uploaded successfully. Link: {gofile_link}")
        else:
            print("Failed to upload the image.")
    
    time.sleep(10)

print('Done!')