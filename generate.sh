#!/bin/bash

if [ $# -ne 1 ]; then
    echo $0: usage: generate.sh source destination
    exit 1
fi


cp $1 $2
