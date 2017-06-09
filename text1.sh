#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}

echo "USAGE:./kadai2.sh int1 int2" > $tmp-ans
./kadai2.sh 33 11 1 > $tmp-err || ERROR_EXIT "TEST1-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST1-2"

echo OK
rm -f $tmp-*
exit 0

