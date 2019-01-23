---
date: 2018-11-15T12:00:00-00:00
description: "this is a memory dump... get it?"
tags: [""]
title: "notes"
---

# notes

warning! i pretty much just write what i know but i don't explain a lot. don't follow these steps unless you know what you're doing.

## 2019/1/21

i wanted to use a raspberry pi zero w tonight because i'm impatient; ssh is disabled by default, i don't have mini hdmi cables and didn't want more clutter on my desk, so i enabled my wifi before the first boot.

first, basic steps: get raspbian in the sd card.

```bash
$ wget <raspbian-that-your-heart-desires> foo.zip
$ umount /dev/barX
$ unzip -p foo.zip | sudo dd bs=4M if=foo.img of=/dev/bar status=progress conv=fsync
```

then, enable ssh and add the password when prompted.

```bash
$ PI_CARD="<replace with the SD mount path>" # /media/"$USER" probably
$ SSID="<replace with your SSID>"
$ touch "${PI_CARD}"/boot/ssh
$ wpa_passphrase "${SSID}" >> "${PI_CARD}"/rootfs/etc/wpa_supplicant/wpa_supplicant.conf
```
