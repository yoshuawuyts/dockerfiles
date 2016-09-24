#!/bin/sh

docker -h > /dev/null

if [ $? -ne 0 ]; then
  printf 'Error: docker not found. Exiting\n'
  exit 1
fi

clean () {
  # Remove all stopped containers
  docker rmi "$(docker images | grep "^<none>" | awk '{ print $3 }')"

  # Remove all untagged images
  docker rm "$(docker ps -a -q)"
}

# run every hour
while sleep 3600; do clean; done
