#!/bin/bash
if [[ $# -le 0 ]]
then 
    echo "you did not pass any files as arguments to the scripts."
    echo "Usage:" "$0" 
    exit
fi

for arg in "$@"
do
  
   if [[ ! -e "$arg" ]]
   then
      echo "* skipping ${arg}"
      continue
   fi
   if [ -f "$arg" ] 
   then
      echo "* $arg is a regular file !"
   else
      echo "* $arg is not a regular file "
   fi 

  [[ -r "$arg" && -d "$arg" ]] && echo "* $arg is a readable directory" 
  [[ ! -x "$arg" ]] && echo  "* $arg is not a executable "

done
