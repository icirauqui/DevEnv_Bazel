#!/bin/bash

cd cc
bazel build ...
cd ..

cd go
bazel build ...
cd ..

cd java
bazel build ...
cd ..

cd privacy-on-beam
bazel build ...
cd ..