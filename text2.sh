#!/bin/bash

tmp=/tmp/$$

ERROR_EXIT () {
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}

echo "wrong number" > $tmp-ans
./kadai2.sh 0 33 > $tmp-err || ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST2-2"

echo OK
rm -f $tmp-*
exit 0

