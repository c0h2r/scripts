#!/bin/bash
grim tmp.png
blur_image tmp.png -o tmp_blured.png
rm tmp.png
swaylock  --image tmp_blured.png --indicator-radius 70 --indicator-thicknes 9 --inside-color 000 --line-color 000000 --ring-color 000000 --key-hl-color 000
rm tmp_blured.png
