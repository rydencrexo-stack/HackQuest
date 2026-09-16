#!/bin/bash

# HackQuest Level 3
# The Encoded Message

mkdir -p /home/player/level3

cat > /home/player/level3/README.txt <<'EOF'
========================================
           HACKQUEST - LEVEL 3
========================================

MISSION: THE ENCODED MESSAGE

You discovered a suspicious message.

It doesn't look like a normal key.

Perhaps the message has been encoded.

Investigate the contents of:

message.txt

Your goal is to recover the key.

========================================
EOF

echo 'SFF7bGV2ZWwzX2VuY29kZWRfc2VjcmV0fQ==' | base64 -d > /tmp/hq_level3_message
cat /tmp/hq_level3_message | base64 -w0 > /home/player/level3/message.txt
rm /tmp/hq_level3_message

chown -R player:player /home/player/level3
chmod 755 /home/player/level3
chmod 644 /home/player/level3/README.txt
chmod 644 /home/player/level3/message.txt

echo "Level 3 created successfully."
