#!/bin/sh
set -e


redis-stat localhost:6379 localhost:6380 localhost:6381 --server=8080 5
