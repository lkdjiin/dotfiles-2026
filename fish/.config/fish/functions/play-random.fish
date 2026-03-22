function play-random \
  --description 'Randomly launch a playlist in Qmmp'

  set list (ls ~/Albums)
  set num (count $list)
  set choice (random 1 $num)
  set playlist  ~/Albums/$list[$choice]/*.m3u

  if [ (count $playlist) -eq 1 ]
    echo Now playing $list[$choice]
    nohup qmmp $playlist cover.jpg &>/dev/null &; disown
  else
    echo ERROR: No playlist found in $list[$choice]
  end
end
