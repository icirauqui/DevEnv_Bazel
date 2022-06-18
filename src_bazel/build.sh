#!/bin/bash

bazel build --symlink_prefix=/tmp/bazel //main:main1

#cd /tmp/bazelbin/main