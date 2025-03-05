#!/bin/bash
lb config --mode debian --debian-installer live --distribution bookworm --architectures amd64
echo "tasksel tasksel/first multiselect standard" >config/package-lists/custom.list.chroot
lb build
