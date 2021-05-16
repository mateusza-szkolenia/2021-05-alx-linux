#!/bin/bash

data=$(date +%F)

tar zcf backup-doc-$data.tar.gz /usr/share/doc

