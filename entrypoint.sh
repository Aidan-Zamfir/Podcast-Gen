#!/bin/bash

echo "============================"

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workplace

python3 /usr/bin/feed.py

git add . && git commit -m "update feed"

git push --set-upstream origin main

echo "============================"