#!/bin/bash

# This script is used to clean all the git branches that have been deleted on remote

rm -f /tmp/brclean-merged-branches
git fetch -p && for branch in $(git branch -vv | grep ': gone]' | awk '{print $1}'); do echo $branch >> /tmp/brclean-merged-branches; done
nano /tmp/brclean-merged-branches
xargs git branch -D < /tmp/brclean-merged-branches
