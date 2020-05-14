#!/bin/sh
echo 'README:'
cat 'README.txt'
echo
echo 'Topological sort by upgrade order:'
sh 'upgrade_order.sh'
echo
echo 'Find conflicts with P1:'
sh 'check_conflict.sh' P1
echo
echo 'Find conflicts with requests:'
sh 'check_conflict.sh' requests
