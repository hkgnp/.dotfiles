#!/bin/bash          
display = yabai -m query --displays
width = display[0]["frame"]["width"]

if [[ $width -eq 1728 ]]
then
    yabai -m config top_padding 0
else
    yabai -m config top_padding 33
fi

