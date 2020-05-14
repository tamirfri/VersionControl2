#!/bin/sh
cd dependencies
awk '{print $1, FILENAME}' * | tsort