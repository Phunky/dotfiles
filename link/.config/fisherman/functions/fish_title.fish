function fish_title
  set -l code $status
  echo "[ $PWD ]"(begin
    test $status -eq 0; and echo ""; or echo "[$status]"
  end) | sed "s|$HOME|~|g"
end