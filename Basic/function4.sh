kj#!/bin/bash
# EMirhan doğandemir 12/01/2022

function envVariable (){

local theReply="$*"

if [[ -n theReply ]]; then
    printf "$theReply \n"
else
echo "ps11 environment variables bulunmamaktadır"
fi

}

#if [[ -n  "env | grep -i "PS11"" ]]
#then
#   printf "$PS11 \n"
#else
  echo "şu anda PS11 komutu sistem değişkenlerinde bulunmamaktadır." 
#fi




#}
