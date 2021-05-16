#!/bin/bash

format=%F
data=$(date +$format)
nazwapliku=backup-doc-$data.tar.gz

tar zcf $nazwapliku /usr/share/doc

