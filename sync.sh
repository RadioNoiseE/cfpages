#!/bin/sh

if [ $# -ne 1 ]; then
    echo "Usage: $0 <article>"
    exit 1
fi

cd "$(cd "$(dirname "$0")" && pwd)"

xsltproc build/web.xsl ../archive/article/"$1".xml |\
    /usr/local/bin/tidy -i -w 120 -o article/"$1".html
