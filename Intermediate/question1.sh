#!/bin/bash
#Emirhan Dogandemir 7/11/2021
#KUllanici dizini {/home/emirhan} altinda bulunan butun dosyalarin sadece isimlerini (gizli dosyalar dahil) yine kullanici dizininde kullanici.txt isimli dosya icine kaydedecek ve dosya icindeki karakter ve satir sayisini gosterecek bash kodu
cd /home/emirhan
ls -a > kullanici.txt && cat kullanici.txt | wc -c -l
