# multimedia
media_artist=$(playerctl --ignore-player=chromium metadata artist)
media_song=$(playerctl --ignore-player=chromium metadata title)
player_status=$(playerctl --ignore-player=chromium status)

if [ $player_status = "Playing" ]
then
    song_status='▶'
elif [ $player_status = "Paused" ]
then
    song_status='='
else
    song_status=''
fi

media_artist=${media_artist:=unknow}
media_song=${media_song:=unknow}

echo "$song_status  $media_artist - $media_song"
