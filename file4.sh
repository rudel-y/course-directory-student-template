#!/bin/bash
b="$1"
shift
for a in $@
do
    k=0
    for i in $(b)/*.$(a)
    do
        if test -f "$i"
        then
            let k=k+1
        fi
    done
    echo "$k files are contained in the $b directory with the $a"
done
