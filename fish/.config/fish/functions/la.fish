function la \
  --description 'Like ls with hidden file'

  eza \
    --all \
    --long \
    --header \
    --time-style=long-iso \
    --group-directories-first \
    $argv
end
