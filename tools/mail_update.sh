#!/usr/bin/env dash

OFFLINEIMAP_CONF_FILE=${HOME}/orgd/config/credentials/offlineimap.conf

# If there is access to the offlineimap config file
if [ -e "${OFFLINEIMAP_CONF_FILE}" ]; then
    # Get new mails.
    offlineimap -c "${OFFLINEIMAP_CONF_FILE}"

    #FIXME Hook me up (see offlineimap documentation)

    notmuch new
    # immediately archive all messages from "me"
    notmuch tag -new -- tag:new and svnmailer Author: vhobeika
    # Trac mails
    notmuch tag +Trac -inbox -- tag:new and from:trac-cosmo@cosmo-platform.org
    # svn mails
    notmuch tag +svn -inbox -- tag:new from:svnmailer@cosmo-platform.org and not "/csmSDK/trunk/csmCore"
    notmuch tag +svn -inbox -- tag:new from:svnmailer@cosmo-platform.org and not "in /csmSDK/trunk: csmCore/"
    # calendar invitations and replies
    notmuch tag +calendar -inbox -- tag:new "Invitation from Google Calendar"
fi
