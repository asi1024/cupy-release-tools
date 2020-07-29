#!/bin/bash -uex

# Download NCCL
gsutil -m cp -r gs://chainer-artifacts-pfn-public-ci/cupy-release-tools/nccl .
ls -al nccl

# Clone CuPy
git clone --recursive https://github.com/cupy/cupy.git cupy

# Build and Verify
./build.sh 9.2 3.8.0
