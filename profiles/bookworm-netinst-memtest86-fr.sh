#!/bin/bash

lb clean --purge
lb config \
    --distribution bookworm \
    --binary-images iso-hybrid \
    --memtest memtest86+ \
    --debian-installer netinst

## FRENCH KEYBOARD
mkdir -p config/includes.chroot/etc/default
echo 'XKBMODEL="pc105"' >config/includes.chroot/etc/default/keyboard
echo 'XKBLAYOUT="fr"' >>config/includes.chroot/etc/default/keyboard
echo 'XKBVARIANT=""' >>config/includes.chroot/etc/default/keyboard
echo 'XKBOPTIONS=""' >>config/includes.chroot/etc/default/keyboard
mkdir -p config/bootloaders
echo 'set keymap=fr' >config/bootloaders/grub.cfg
echo 'KERNEL vmlinuz' >config/bootloaders/syslinux.cfg
echo 'APPEND initrd=initrd.img boot=live components keyboard-layouts=fr' >>config/bootloaders/syslinux.cfg

lb build
