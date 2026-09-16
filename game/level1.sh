#!/bin/bash

# HackQuest Level 1
# The Hidden Key

mkdir -p /home/player/level1

cat > /home/player/level1/README.txt <<'EOF'
========================================
           HACKQUEST - LEVEL 1
========================================

MISSION: THE HIDDEN KEY

A key has been hidden somewhere inside
this directory.

Your objective is to find it.

Useful Linux commands may help you.

========================================
EOF

cat > /home/player/level1/notes.txt <<'EOF'
Nothing useful here...

Maybe the key isn't visible.
EOF

echo 'SFF7bGV2ZWwxX2hpZGRlbl9rZXl9' | base64 -d > /home/player/level1/.key

chown -R player:player /home/player/level1
chmod 755 /home/player/level1
chmod 644 /home/player/level1/README.txt
chmod 644 /home/player/level1/notes.txt
chmod 644 /home/player/level1/.key

echo "Level 1 created successfully."
