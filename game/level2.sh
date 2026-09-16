#!/bin/bash

# HackQuest Level 2
# The Search

mkdir -p /home/player/level2/data

cat > /home/player/level2/README.txt <<'EOF'
========================================
           HACKQUEST - LEVEL 2
========================================

MISSION: THE SEARCH

Someone has scattered pieces of data
across this directory.

One of the files contains the key.

Find it.

The key format starts with:

HQ{

========================================
EOF

# Create 50 harmless files
for i in $(seq -w 1 50); do
    echo "This file contains no useful key." > "/home/player/level2/data/file${i}.txt"
done

echo "Congratulations, you found the hidden key:" > /home/player/level2/data/file37.txt
echo 'SFF7bGV2ZWwyX3NlYXJjaF9tYXN0ZXJ9' | base64 -d >> /home/player/level2/data/file37.txt

chown -R player:player /home/player/level2
chmod 755 /home/player/level2
chmod 755 /home/player/level2/data
chmod 644 /home/player/level2/README.txt
chmod 644 /home/player/level2/data/*.txt

echo "Level 2 created successfully."
