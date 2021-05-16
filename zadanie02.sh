#!/bin/bash

format=%F
data=$(date +$format)
nazwapliku=backup-doc-$data.tar.gz
katalog=/usr/share/doc

tar zcf $nazwapliku $katalog

