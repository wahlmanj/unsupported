#!/bin/bash

cd /applications/unsupported

#current user
whoami=${USER}

## replace __USERNAME__in default setup.bash
## save directly to the /applications/unsupported folder
sed -i '' 's/__USERNAME__/$whoami/g' setup.bash
