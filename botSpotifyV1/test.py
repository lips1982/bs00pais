import os
cuenta="azuresilk01"
urlGoogle = "https://accounts.google.com/signin/chrome/sync/identifier"
os.system(f"google-chrome --no-sandbox --user-data-dir=/home/lips/{cuenta} {urlGoogle} &")