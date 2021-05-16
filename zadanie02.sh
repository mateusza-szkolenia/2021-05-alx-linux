#!/bin/bash

format=%F
data=$(date +$format)

tar zcf backup-doc-$data.tar.gz /usr/share/doc

