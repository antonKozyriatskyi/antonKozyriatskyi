#!/bin/sh

set -e

echo "-- Copying assets to web folder"
echo ""

cp -r assets web/assets

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
echo "-- Clean up"

cd ../..
rm -r web/assets

echo ""
echo "-- Deploy finished"

sleep 10
