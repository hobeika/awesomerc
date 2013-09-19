#!/usr/bin/env dash

OFFLINEIMAP_CONF_FILE=${HOME}/orgd/config/credentials/offlineimap.conf

# If there is access to the offlineimap config file
if [ -e "${OFFLINEIMAP_CONF_FILE}" ]; then
    # Get new mails.
    offlineimap -c "${OFFLINEIMAP_CONF_FILE}"
fi
