function now-playing \
  --description 'Show what song is currently playing by Qmmp player'

  set player qmmp
  set present false

  for i in (playerctl --list-all)
    if [ $i = $player ]
      set present true
    end
  end

  if not $present
    echo '🎵 Playing nothing'
    return
  end

  set cover (playerctl --player=qmmp metadata mpris:artUrl)
  echo
  if [ -z $cover ]
    echo "🎵 No cover"
  else
    chafa --format=symbols -w 9 --size=40x40 (string replace 'file://' '' $cover)
  end

  echo
  playerctl --player=qmmp metadata --format "🎵 Now playing {{artist}} - {{album}} - {{title}}"

  echo
end
