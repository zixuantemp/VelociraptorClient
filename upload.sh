#!/bin/bash

# Ensure script stops on errors
set -e

# GitHub Personal Access Token (PAT) (Set this securely!)
GITHUB_TOKEN="Z2hwX2dVUU1maFFyZHkybFNsZkc1d1hKSDc5Q2R4R2tZWTNqYk8ycQ=="
TOKEN=$(echo "$GITHUB_TOKEN" | base64 --decode)

# GitHub repository URL (replace with your repo)
REPO_URL="https://github.com/zixuantemp/VelociraptorClient.git"
# Check if a filename is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# File to commit
FILE="$1"

# Git commit message
COMMIT_MSG="Updated $FILE"

# Set up Git credentials using token
git config --global user.name "zixuantemp"
git config --global user.email "zixuantemp@gmail.com"

# Add the file
git add "$FILE"

# Commit the changes
git commit -m "$COMMIT_MSG"

# Push to the repository
git push origin main
echo "$TOKEN"
