function gi \
  --description 'git with a missed t ;)'

  if test -n "$argv"
    echo "Je prend pour hypothèse que tu voulais dire git st:"
    git status
  else
    echo "gi n'existe pas"
    return 1
  end
end
