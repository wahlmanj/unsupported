#!/bin/bash

mv /applications/unsupportedappstore.bundle /applications/unsupported
cp -R /applications/unsupported/unsupportedappstore.bundle /Users/__USERNAME__/Library/Application\ Support/Plex\ Media\ Server/Plug-ins
rm -Rf /applications/unsupported
rm /usr/bin/unsupported.bash
rm /usr/bin/unsupported2.bash
rm /usr/bin/unsupported3.bash
