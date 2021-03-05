#!/usr/bin/env bash
#https://www.virtualbox.org/ticket/19047#comment:6
mount -uw /
chmod 775 /System/Library/Extensions
printf "Enabled SLE write access now install %s" "$(find /Volumes -name "VBoxDarwinAdditions.pkg")"
