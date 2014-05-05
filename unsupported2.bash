#!/bin/bash

cd /applications/unsupported
DefaultPath=${PWD}

#current user
whoami=${USER}

## replace __USERNAME__in default setup.bash
## save directly to the /applications/unsupported folder
sed -e "s/__USERNAME__/$whoami/" "${DefaultPath}/setup.bash" > /applications/unsupported/copy.bash
