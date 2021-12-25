#!/bin/bash
echo "hello world"
path=$(pwd)
echo $path 
echo "ilk değişken :" $1 
echo "ikinci değişken" $2
echo "script name :" $0
echo "verilen argüman sayısı :" $#
echo "tüm argümanların string bir şekli :" $*
echo "tüm argümanların array bir şekli :" $@
echo "bash başarı ile çalıştı mı ? :" $?

