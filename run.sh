#!/bin/bash

if [[ $# -ne 1 ]]
then
    echo "Insufficient arguments! Usage: run.sh <file>" 1>&2
    exit 1
fi


if [[ ! -f "./testu01" ]]
then
    echo "testu01 binary not found!" 1>&2
    exit 1
fi

echo ">> Running TESTU01..."
./testu01 $1

echo ">> Running ENT..."
ent $1

echo ">> Running DIEHARDER..."
dieharder -a -f $1

echo "Done!"
