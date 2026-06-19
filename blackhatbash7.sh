#!/bin/bash

grep "35.237.4.214" log.txt

grep "35.237.4.214\|13.66.139.0" log.txt

grep -e "35.237.4.214" -e "13.66.139.0" log.txt

ps | grep TTY

ps | grep -i tty

grep -v "35.237.4.214" log.txt

grep -o "35.237.4.214" log.txt

awk '{print $1}' log.txt

awk '{print $1,$2,$3}' log.txt

awk '{print $2}' log.txt

awk '{print $3}' log.txt

awk '{print $1,$NF}' log.txt

awk -F',' '{print $1}' skibidipomni2

touch skibidi_csv.txt
echo "columna1,columna2,columna3" > skibidi_csv.txt

echo "wasa1,wasa2,wasa3" >> skibidi_csv.txt

echo "jess1,jess2,jess3" >> skibidi_csv.txt

awk 'NR < 10' log.txt

head log.txt

grep "42.236.10.117" log.txt

awk '{print $7}' log.txt

grep "42.236.10.117" log.txt | awk '{print $7}'

sed 's/Mozilla/Godzilla/g' log.txt

grep "Mozilla" log.txt

sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt

grep "Godzilla" newlog.txt

sed '1d' newlog.txt

sed -i '1d' newlog.txt

