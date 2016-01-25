#!/bin/bash

export METEOR_SETTINGS="$(cat /opt/aloe/settings.json)"
cd /opt/aloe/bundle
echo "Lancement aloe..."
env
ip add
node main.js
