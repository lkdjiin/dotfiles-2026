function s \
  --description 'List directory on a clean, cleared screen'

    clear
    if test -n "$argv"
      echo "Content of $argv"
      echo
    end
    ls $argv
end
