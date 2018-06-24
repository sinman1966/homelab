#!/bin/bash
rsync -r -t -p -o -g -v --delete -l -s /data/testdata cloud2:/data/testdata
