function title \
  --description 'Change the window title of the terminal'

  if set --query $argv
    echo -en "\033]0;$argv\007"
  else
    set t (path basename $PWD)
    echo -en "\033]0;$t\007"
  end
end
