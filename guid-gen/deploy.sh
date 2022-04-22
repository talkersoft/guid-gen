﻿#!/bin/bash
top=$(git rev-parse --show-toplevel)
pushd $top
    pushd guid-gen
        dotnet publish --framework net6.0 --runtime osx.10.11-x64 -p:PublishDir=.\publish --self-contained true
        cp ./.publish/guid-gen /usr/local/bin/guid-gen
    popd
popd