#!/bin/sh

wget https://www.hackthebox.eu/badge/17794 -P /home/pi/
sleep 1
cut -c29- /home/pi/17794 > /home/pi/decoded
sleep 1
rev /home/pi/decoded | cut -c4- | rev > /home/pi/done
sleep 1
base64 -d /home/pi/done > /home/pi/decrypted
rm /home/pi/17794
rm /home/pi/done
rm /home/pi/decoded
sleep 1
cut -c1554- /home/pi/decrypted > /home/pi/decrypted2
rm /home/pi/decrypted
rev /home/pi/decrypted2 | cut -c372- | rev > /home/pi/rank
rm /home/pi/decrypted2
python /home/pi/htb.py &
