#!/bin/bash

echo "This will remove and add your password…"
ASSWORD_CONTEXT="$@"
assword remove "${ASSWORD_CONTEXT}"
assword add "${ASSWORD_CONTEXT}"
