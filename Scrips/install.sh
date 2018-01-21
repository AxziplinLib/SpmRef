#!/bin/sh
swift package clean
swift test
swift build -c release
cp .build/release/spmref /usr/local/bin/spmref
