#!/bin/bash

yarn workspace @human-protocol/core local &

sleep 5
yarn workspace @human-protocol/core deploy:local

pipenv run python -m unittest

trap 'kill $(jobs -p)' EXIT
