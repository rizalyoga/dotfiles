#!/bin/bash

MUSIC_DIR=/run/media/dragneel/2/Music/

COVER=/tmp/cover.jpg

function reset_background
{
    printf "\e]20;;100x100+1000+1000\a"
}

{
    album="$(mpc --format %album% current -p 6601)"
    file="$(mpc --format %file% current -p 6601)"
    album_dir="${file%/*}"
    [[ -z "$album_dir" ]] && exit 1
    album_dir="$MUSIC_DIR/$album_dir"

    covers="$(find "$album_dir" -type d -exec find {} -maxdepth 1 -type f -iregex ".*/.*\(${album}\|cover\|folder\|artwork\|front\).*[.]\(jpe?g\|png\|gif\|bmp\)" \; )"
    src="$(echo -n "$covers" | head -n1)"
    rm -f "$COVER" 
    if [[ -n "$src" ]] ; then
        #resize the image's height to 300px & extent it to cover the urxvt length
        convert "$src" -resize 300x -extent 300x295 "$COVER"
        if [[ -f "$COVER" ]] ; then
        
           #-- original script --
           #scale down the cover to 30% of the original
           #place it 1% away from left and 50% away from top.
           #printf "\e]20;${COVER};80x70+0+4:op=keep-aspect\a"
           #---------------------
           
           #no need to scale down, i have extent it
           printf "\e]20;${COVER};80x80+3+10:op=keep-aspect\a"
        else
            reset_background
        fi
    else
        reset_background
    fi
} &
