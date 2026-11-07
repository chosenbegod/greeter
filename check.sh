#!/bin/bash
status=0
bash -n ./greet.sh
result=$?
if [ "$result" -eq 0 ]; then
    echo "OK"
else
    echo "FAIL"
	status=1
fi
./greet.sh;
result=$?
if [ "$result" -eq 1 ]; then
	echo "OK"
else
	echo "FAIL"
	status=1
fi
./greet.sh sailzo;
result=$?
if [ "$result" -eq 0 ]; then
	echo "OK"
else
	echo "FAIL"
	status=1
fi
output=$(./greet.sh Кирилл)
result=$?
if [ "$result" -eq 0 ] && echo "$output" |  grep -q "Кирилл" ; then
	echo "OK"
else 
	echo "FAIL"
	status=1
fi
exit "$status"
