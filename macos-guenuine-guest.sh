#!/usr/bin/env bash
# RUN THIS SCRIPT ON YOUR GENUINE MAC
# AND FILL UP COLLECTED DATA
# IN macos-guest-virtualbox.sh
DmiSerial="4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14"
echo -e "
$(system_profiler SPHardwareDataType)
DmiBoardProduct=\"$(ioreg -l | grep -m 1 board-id | cut -f2 -d"=") \"
MLB=\"$(nvram ${DmiSerial}:MLB)\"
ROM=\"$(nvram ${DmiSerial}:ROM)\"
SYSTEM_UUID=\"$(ioreg -l -p IODeviceTree | grep system-id | head -n1 | cut -f2 -d"=")\"
SYSTEM_INTEGRITY_PROTECTION=\"$([[ $(csrutil status) =~ .*disabled\.$ ]] && echo "77" || echo "10")\""

