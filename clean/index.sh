#!/bin/sh

# run every hour by default
WAIT_SECONDS=${WAIT_SECONDS:=3600}

# infinite loop
while true; do
  ./docker-gc
  sleep "$WAIT_SECONDS"
done
