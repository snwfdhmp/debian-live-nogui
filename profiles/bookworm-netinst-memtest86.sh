#!/bin/bash

lb clean --purge
lb config \
    --distribution bookworm \
    --binary-images iso-hybrid \
    --memtest memtest86+ \
    --debian-installer netinst

lb build
