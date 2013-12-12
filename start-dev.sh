#!/bin/bash
ORIGDIR=`pwd`
rm -f uping.log
rebar compile skip_deps=true
rebar generate
cd $ORIGDIR
./rel/uping/bin/uping console