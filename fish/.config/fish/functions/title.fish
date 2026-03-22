function title \
  --description 'Change the window title of the terminal'

    echo -en "\033]0;$argv\007"
end
