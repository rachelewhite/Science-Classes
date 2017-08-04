#!/bin/bash
> /tmp/index.md
for file in *.htm;
do
    echo -n "* " >> /tmp/index.md
    echo -n $file | sed 's/\..*//' | sed 's/^/[/' | sed 's/$/]/' >> /tmp/index.md
    echo $file | sed 's,^,(https://rachelewhite.github.io/Science-Classes/,' | sed 's/$/)/' >> /tmp/index.md
done
sort -V /tmp/index.md > index.md
