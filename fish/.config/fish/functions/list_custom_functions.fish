function list_custom_functions \
  --description 'Show custom functions, aliases and abbreviations'

  echo '⦿ ⦿ ⦿ aliases ⦿ ⦿ ⦿ '
  alias
  echo
  echo '⦿ ⦿ ⦿ abbreviations ⦿ ⦿ ⦿ '
  abbr
  echo
  echo '⦿ ⦿ ⦿ functions ⦿ ⦿ ⦿ '
  for i in ~/.config/fish/functions/*
    set fname "$(path basename -E $i) "
    set fname (string pad -w 24 --right --char='⬝' $fname)
    set fdesc (sed -n '/--description/p' $i | sed -e 's/--description//')
    printf "%s%s\n" $fname $fdesc[1]
  end
  echo
end
