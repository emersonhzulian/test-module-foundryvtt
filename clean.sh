#!/bin/bash

MODULE_ID=$(jq -r '.id' module.json)
DATA_PATH=$(fvtt configure view | grep -oP "dataPath: '\K[^']+")
rm -rf "$DATA_PATH/Data/modules/$MODULE_ID"
mkdir -p "$DATA_PATH/Data/modules/$MODULE_ID"
cp -r packs "$DATA_PATH/Data/modules/$MODULE_ID/"
cp module.json "$DATA_PATH/Data/modules/$MODULE_ID/"
