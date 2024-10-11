import pyautogui as pag
import time
import requests
import os

# Define actions with coordinates and duration
actions = [
    (516, 405, 4),  # install (wait 15sec)
    (50, 100, 1),   # tic launch avica
    (249, 203, 4),  # allow rdp
    (447, 286, 4),  # ss id & upload (launch avica)
]

# Give time to focus on the target application
time.sleep(10)

# Credentials and upload information
new_password = "1234567"  # The new password you want to type
img_filename = 'IperiusRemoteID.png'

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
                    bat_file.write(f'\necho Avica Remote ID : {download_page}')
                    bat_file.write(f'\necho Avica Remote Pass : {new_password}')
                return download_page
            else:
                print("Upload error:", result.get('status'))
                return None
    except Exception as e:
        print(f"Failed to upload image: {e}")
        return None

# Iterate through actions
for x, y, duration in actions:
    pag.click(x, y, duration=duration)
    
    # After clicking on the 'change password' field (443, 141), type the new password
    if (x, y) == (443, 141):
        time.sleep(2)  # Wait a bit before typing
        pag.write(new_password, interval=0.1)  # Type the new password "1234567"
    
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