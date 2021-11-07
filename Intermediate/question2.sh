#!/bin/bash
# Emirhan Dogandemir 7/11/2021
 
#Sistem kullanicilarindan birinin ismininin student oldugu bir sistem dusunelim . Bu kullaniciya ait islemlerin kac adet oldugunu gosterecek bash kodunu yaziniz

#first solution
ps -ef | grep emirhan  | wc -l

#second solution
#ps -aux | grep student | wc -l
