#!/bin/bash

echo "This will remove and ask for your new password…"
ASSWORD_CONTEXT="$@"
assword remove "${ASSWORD_CONTEXT}"
ASSWORD_PASSWORD=prompt assword add "${ASSWORD_CONTEXT}"
