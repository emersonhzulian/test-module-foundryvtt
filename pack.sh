#!/bin/bash

for pack in $(jq -r '.packs[].name' module.json); do
  echo "Packing $pack..."
  fvtt package pack -n "$pack" --in "$PWD/packs/$pack/_source" --out "$PWD/packs"
done

echo "All packs packed!"
