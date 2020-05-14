#!/bin/sh

# $1 - first parameter is package name to check for

if [ $# -ne 1 ]
then
  echo 'Required exactly 1 parameter'
  echo 'the package to check for conflicts'
  exit 1
fi

cd dependencies
awk "/$1/{print FILENAME, \$2}" * | uniq --all-repeated --skip-fields=2