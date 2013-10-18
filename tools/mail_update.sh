#!/usr/bin/env dash

OFFLINEIMAP_CONF_FILE=${HOME}/orgd/config/credentials/offlineimap.conf
OFFLINEIMAP_BIN=/usr/bin/offlineimap
NOTMUCH_BIN=/usr/bin/notmuch

# If there is access to the offlineimap config file
if [ -e "${OFFLINEIMAP_CONF_FILE}" ]; then
    # Get new mails.
    ${OFFLINEIMAP_BIN} -c "${OFFLINEIMAP_CONF_FILE}"

    #FIXME Hook me up (see offlineimap documentation)

    ${NOTMUCH_BIN} new
    # immediately archive all messages from "me"
    ${NOTMUCH_BIN} tag -new -- tag:new and svnmailer Author: vhobeika
    # trac mails
    ${NOTMUCH_BIN} tag +trac -- tag:new and from:trac-cosmo@cosmo-platform.org
    # svn mails
    ${NOTMUCH_BIN} tag +svn -- tag:new and from:svnmailer@cosmo-platform.org and not "/csmSDK/trunk/csmCore"
    ${NOTMUCH_BIN} tag +svn -- tag:new and from:svnmailer@cosmo-platform.org and not "in /csmSDK/trunk: csmCore/"
    # calendar invitations and replies
    ${NOTMUCH_BIN} tag +calendar -inbox -- tag:new and "Invitation from Google Calendar"
    # finally, retag all "new" messages "inbox" and "unread"
    ${NOTMUCH_BIN} tag +inbox +unread -new -- tag:new
    ${NOTMUCH_BIN} tag -unread -- tag:svn
fi
