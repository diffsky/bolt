#!/usr/bin/env bash

shellcheck {lib/*.sh,types/*.sh,bin/bolt} --exclude=SC2181,2148,2005,2116,2155,2034,1090,2164,2154,2012,1117,2219,SC2254,SC2086,SC2231 && \
echo "shellcheck OK" && \
bats --tap test && \
echo "bats OK" && \
echo "PASS" && \
exit 0;

echo "FAIL"
exit 1;
