#!/bin/bash
#Emirhan Dogandemir 7/11/2021
#calisma dizinindeki public(word) izni sadece okuma olan dizinlerin sayisini verecek bash kodunu yaziniz
cd /home/emirhan
ls -l > onlyreadpublic.txt && egrep ".(r|-)(w|-)(x|-)(r|-)(w|-)(x|-)r--" onlyreadpublic.txt

# ilk basta dizinimi sectim 
# ls -l komutunun ciktisini onlyreadpublic.txt icine koyup bu command satirinin basarili olmasi durumunda gerekli Regular expressionu yazarak istenen sonucu cikti olarak verdim 
