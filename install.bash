#!/bin/bash

#current user
whoami=${USER}

## replace __USERNAME__in default setup.bash
## save directly to the /applications/unsupported folder
sed -e "s/__USERNAME__/$whoami/" > /applications/unsupported/setup.bash
