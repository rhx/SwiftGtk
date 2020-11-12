#!/bin/bash

swift package update
.build/checkouts/gir2swift/gir2swift-generation-driver.sh $PWD
