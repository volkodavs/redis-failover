#!/bin/sh
set -e

while ! nc -q 1 localhost 6379 </dev/null; do sleep 1; done
while ! nc -q 1 localhost 6380 </dev/null; do sleep 1; done
while ! nc -q 1 localhost 6381 </dev/null; do sleep 1; done

redis-stat localhost:6379 localhost:6380 localhost:6381 --server=8080 5
