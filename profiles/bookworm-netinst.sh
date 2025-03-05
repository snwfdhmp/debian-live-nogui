#!/bin/bash

lb clean --purge
lb config \
    --distribution bookworm \
    --binary-images iso-hybrid \
    --debian-installer netinst

lb build
