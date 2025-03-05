#!/bin/bash

lb clean --purge
lb config \
    --distribution bookworm \
    --binary-images iso-hybrid

lb build
