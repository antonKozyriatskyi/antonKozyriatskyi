#!/bin/sh

set -e

echo "-- Building the app"
echo ""

flutter build web --release

echo ""
echo "-- Committing new build files"
echo ""

cd build/web

git add .
git commit -m "Publish new version"

echo ""
echo "-- Pushing changes"
echo ""

git push

echo ""
echo "-- Deploy finished"

cd ../..

$SHELL
