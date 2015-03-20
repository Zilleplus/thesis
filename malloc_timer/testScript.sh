#!/bin/bash
echo '' > testResults
for i in {1..64}
do
    echo 'test with '$i' threads'
    ./a.out $i >> testResults
done
