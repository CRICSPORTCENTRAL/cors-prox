#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# https://nodejs.org/en/learn/getting-started/profiling

# https://hlsjs.video-dev.org/demo/
# https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8
# http://webcast-reloaded.frii.site/proxy.html#/watch/aHR0cHM6Ly90ZXN0LXN0cmVhbXMubXV4LmRldi94MzZ4aHp6L3gzNnhoenoubTN1OA%253D%253D/referer/aHR0cHM6Ly9obHNqcy52aWRlby1kZXYub3JnLw%253D%253D

request_url='http://localhost:8080/aHR0cHM6Ly90ZXN0LXN0cmVhbXMubXV4LmRldi94MzZ4aHp6L3gzNnhoenoubTN1OHxodHRwczovL2hsc2pzLnZpZGVvLWRldi5vcmcv.m3u8'

cd "$DIR"
ab -k -c 20 -n 250 "$request_url" >>ab.log 2>&1
