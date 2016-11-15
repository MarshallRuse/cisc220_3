#Anna Teng 10061146
#Henry Wang 10199252
#Katherine Le 10188031
#Marshall Ruse 10066247
#!/bin/sh

find . -type f -perm -700 -exec sh -c '
  for f
  do
    head -n 1 "$f" | grep -qFx "#!/bin/bash" &&
      printf "%s\n" "1a" "\"#Developed in cisc220\"" . x | ex "$f"
  done
' find-sh {} +
