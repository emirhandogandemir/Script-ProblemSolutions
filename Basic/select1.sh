#!/bin/bash
select op in pwd ls who all none
do 
case $op in
pwd | ls | who ) eval $op;;
all) pwd ; ls ; who ;;
none) break ;;
*) echo "ERROR : inValid selection , $REPLY." ;;
esac
done
basename $HOME
