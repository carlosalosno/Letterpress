#!/usr/bin/env bash

#export VELOCITY_DEBUG=0

# these are about to get canned
export JASMINE_CLIENT_UNIT=0
export JASMINE_SERVER_UNIT=0

export JASMINE_CLIENT_INTEGRATION=1
export JASMINE_SERVER_INTEGRATION=1
export CUCUMBER=1

if [ $1 = "--test" ]; then
  export CUCUMBER_TAIL=1;
  #export SIMIAN_ACCESS_TOKEN=
fi

meteor $1 --settings settings.json --release velocity:METEOR@1.1.0.2_3 --raw-logs