#!/usr/bin/env python

import sys, os
import PTN

PARSE_FOLDER  = "/home/dave/Torrents/Completed"
MOVIE_FOLDER  = "/home/media/Movies"
TVSHOW_FOLDER = "/home/media/Movies"

files_to_parse = []

for root, dirs, files in os.walk(PARSE_FOLDER):
    for file in files:
        if file.endswith(('.mp4', '.avi', '.mkv')):
            files_to_parse.append(os.path.join(root, file))

for file in files_to_parse:

    file_info = PTN.parse(file)
    
    if 'season' in file_info:
        show_path = os.path.join(TVSHOW_FOLDER, os.path.basename(file_info['title']))
        os.makedirs(show_path, exist_ok = True)
        new_path = os.path.join(show_path, os.path.basename(file))
        os.rename(file, new_path)

    else:
        if 'sample' in os.path.basename(file).lower():
            break
        new_path = os.path.join(MOVIE_FOLDER, os.path.basename(file))
        os.rename(file, new_path)
