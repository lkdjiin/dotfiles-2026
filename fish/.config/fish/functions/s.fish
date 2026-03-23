function s \
  --description 'List directory on a clean, cleared screen'

  clear
  if test -n "$argv"
    echo "Content of $argv"
    echo
  end

  eza --group-directories-first --icons=auto $argv
end
