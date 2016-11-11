#!/bin/sh

find . -type f -perm -700 -exec sh -c '
  for f
  do
    head -n 1 "$f" | grep -qFx "#!/bin/bash" &&
      printf "%s\n" "1a" "\"#Developed in cisc220\"" . x | ex "$f"
  done
' find-sh {} +
