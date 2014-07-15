#!/bin/bash

# Build script to create Technic-compatible modpack zip file

DEFAULTDIR=.
TARGETDIR=${1:-$DEFAULTDIR}
MODPACK_NAME=ProcrastinationPack
MODPACK_VERSION=0.001
MINECRAFT_VERSION=1.7.10
TIMESTAMP=$(date +%s)

TARGETFILENAME=$TARGETDIR/$MODPACK_NAME-$MODPACK_VERSION-MC$MINECRAFT_VERSION.zip

zip $TARGETFILENAME bin/* config/* coremods/* mods/*
