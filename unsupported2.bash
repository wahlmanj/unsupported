#!/bin/bash

cd /usr/bin
DefaultPath=${PWD}

#current user
whoami=${USER}

## replace __USERNAME__in default unsupported3.bash
## save directly to the /applications/unsupported folder
sed -e "s/__USERNAME__/$whoami/" "${DefaultPath}/unsupported3.bash" > /applications/unsupported/copy.bash
sed -e "s/__USERNAME__/$whoami/" "${DefaultPath}/unsupported4.bash" > /applications/unsupported/user.bash

