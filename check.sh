#!/bin/bash
bash -n ./greeter/greet.sh
./greeter/greet.sh;
result=$?
if [ "$result" -eq 1 ]; then
	echo "OK"
else
	echo "FAIL"
fi
./greeter/greet.sh sailzo;
result=$?
if [ "$result" -eq 0 ]; then
	echo "OK"
else
	echo "FAIL"
fi
