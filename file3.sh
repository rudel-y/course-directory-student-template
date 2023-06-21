#!/bin/bash
a="$1"
for i in $(a)/*
do
    echo "$i"

    if test -f $i
    then echo "regular file"
    fi

    if test -d $i
    then echo "catalog"
    fi

    if test -r $i
    then echo "reading allowed"
    fi    
     
    if test -w $i
    then echo "registration allowed"
    fi
     
    if test -x $i
    then echo "execution allowed"
    fi
done
