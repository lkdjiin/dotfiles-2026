function bat-light \
  --description 'Iterate amongst light batcat themes'

  set themes Coldark-Cold GitHub OneHalfLight gruvbox-light

  if contains $BAT_THEME $themes
    set index (contains --index $BAT_THEME $themes)
  else
    set index 0
  end

  set index (math $index + 1)

  if [ $index -gt (count $themes) ]
    set index 1
  end

  set -x BAT_THEME $themes[$index]
  echo $themes[$index] > ~/.config/bat/theme
end
