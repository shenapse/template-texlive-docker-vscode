#!/bin/bash -eux

workspaceFolder=$(readlink -f $(dirname $(dirname $0)))
memo_file="$workspaceFolder/installed-packages.txt"

tlmgr info --only-installed >> $memo_file