#! /bin/sh

CONFCHECK=`grep "dtparam=pwr_led_trigger=timer" /boot/config.txt`

if [ ! "$CONFCHECK" = "" ]; then
  echo "Already setup. Abort."
  exit 1
fi

echo "dtparam=pwr_led_trigger=timer" >> /boot/config.txt

cp ledctrl.service /etc/systemd/system/ledctrl.service
systemctl enable ledctrl.service

