#!/bin/sh
CONFIG_FILE="/config/smb.conf"

exec ionice -c 3 nmbd --configfile="${CONFIG_FILE}" -l /config -F --debug-stdout --no-process-group