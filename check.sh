#!/bin/bash
bash -n ./greet.sh
result=$?
if [ "$result" -eq 0 ]; then
    echo "OK"
else
    echo "FAIL"
fi
./greet.sh;
result=$?
if [ "$result" -eq 1 ]; then
	echo "OK"
else
	echo "FAIL"
fi
./greet.sh sailzo;
result=$?
if [ "$result" -eq 0 ]; then
	echo "OK"
else
	echo "FAIL"
fi
