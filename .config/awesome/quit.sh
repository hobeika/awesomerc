#!/bin/bash

# kill gpg-agent
pkill gpg
# exit awesome
echo 'awesome.quit()' | awesome-client

exit 0

