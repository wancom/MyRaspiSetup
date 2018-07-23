#! /bin/sh

cp powerchk /usr/local/bin/powerchk
cp -r cmds /etc/powerchk
cp powerchk.service /etc/systemd/system/powerchk.service
systemctl enable powerchk.service
systemctl start powerchk.service

