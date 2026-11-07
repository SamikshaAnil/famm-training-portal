#!/bin/bash

set -e

SOURCE_DIR="$WORKSPACE/website"
TARGET_DIR="/var/www/html"

echo "Starting deployment..."

if [ ! -f "$SOURCE_DIR/index.html" ]; then
    echo "ERROR: Website files not found"
    exit 1
fi

sudo cp -r "$SOURCE_DIR/." "$TARGET_DIR/"

echo "Deployment completed successfully"
