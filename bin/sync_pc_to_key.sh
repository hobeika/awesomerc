#! /bin/bash

cd /home/vincent/org/
rsync -avz --progress --delete /home/vincent/org/ /home/vincent/key/org/
rsync -avz --progress --delete /home/vincent/mycfg/ /home/vincent/key/mycfg/
