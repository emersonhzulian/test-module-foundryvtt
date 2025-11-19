# Development Guide

This guide explains how to work with the compendium packs in this FoundryVTT module.

## Pre-requisites
Copy the foundry .zip file downloaded from the site into /.devcontainer!!!

**1. Set the working package** (tells CLI which package you're working on)
```bash
fvtt configure set installPath /opt/foundryvtt && fvtt configure set dataPath /workspace/data; # not needed if Foundry installed when creating the container
fvtt package workon "my-new-module" --type "Module"
```

**2. Unpack a compendium** (extracts to JSON files)
```bash
./unpack.sh
```

**3. Make your edits** to the JSON files in the `_source` directory

**4. Pack the compendium** (converts JSON back to LevelDB)
```bash
./pack.sh
```

**5. Copy it to inside the data folder**
```bash
./clean.sh 
```

**5. Test** your changes by loading the module in FoundryVTT
```bash
fvtt launch
```