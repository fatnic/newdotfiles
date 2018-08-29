#!/usr/bin/env python

import sys
import os
import requests
import shutil
from bs4 import BeautifulSoup

WALL_ID = sys.argv[1].split('/')[-1]

DL_URL = "https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-{}.{}"
DL_PATH = "/home/dave/Pictures/Wallpaper/wallhaven-{}.{}"

page = requests.get(sys.argv[1], headers = { 'User-agent' : 'Mozilla/5.0' })
soup = BeautifulSoup(page.text, 'html.parser')
wallpaper = soup.find('img', attrs = { 'id' : 'wallpaper' })
wall_ext = wallpaper['src'].split('.')[-1]

r = requests.get(DL_URL.format(WALL_ID, wall_ext), stream = True, headers = { 'User-agent' : 'Mozilla/5.0' })

if r.status_code == 200:
    with open(DL_PATH.format(WALL_ID, wall_ext), 'wb') as f:
        r.raw.decode_content = True
        shutil.copyfileobj(r.raw, f)
    wallpaper_path = DL_PATH.format(WALL_ID, wall_ext)
    # os.system('feh --bg-fill {}'.format(wallpaper_path)) 
    os.system('wal -i {}'.format(wallpaper_path)) 
