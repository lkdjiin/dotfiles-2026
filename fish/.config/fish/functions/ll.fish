function ll \
  --description 'Like ls with lots more information'

  eza \
    --long \
    --header \
    --time-style=long-iso \
    --group-directories-first \
    $argv
end
