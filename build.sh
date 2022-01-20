#!/usr/bin/env bash

BUILD_DIR="public"

echo "ボンド"
echo "BONDO"
echo "Building..."

[ ! -d "public" ] && mkdir $BUILD_DIR
cp index.html $BUILD_DIR/index.html

echo "Bondo Built!"
echo "ボンド"