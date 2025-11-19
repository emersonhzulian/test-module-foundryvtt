#!/bin/bash

for pack in $(jq -r '.packs[].name' module.json); do
  echo "Unpacking $pack..."
  fvtt package unpack -n "$pack" --in "$PWD/packs" --out "$PWD/packs/$pack/_source"
done

echo "All packs unpacked!"
