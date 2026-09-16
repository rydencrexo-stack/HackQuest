#!/bin/bash

# HackQuest Level 4
# The Mystery File

mkdir -p /home/player/level4/evidence

cat > /home/player/level4/README.txt <<'EOF'
========================================
           HACKQUEST - LEVEL 4
========================================

MISSION: THE MYSTERY FILE

Something is wrong with the evidence.

Several files have been placed in the
evidence directory.

But filenames can be misleading.

Find the file that isn't what it claims
to be.

Useful commands:

    file
    strings

Recover the hidden key.

========================================
EOF

cat > /home/player/level4/evidence/photo.jpg <<'EOF'
This is just a normal text file pretending to be an image.
Nothing useful here.
EOF

cat > /home/player/level4/evidence/report.txt <<'EOF'
Security incident report.

No key is stored in this report.
EOF

cat > /home/player/level4/evidence/backup.dat <<'EOF'
Backup information:
System backup completed successfully.
EOF

cat > /home/player/level4/evidence/archive.bin <<'EOF'
Binary archive placeholder.
No useful information here.
EOF

cat > /home/player/level4/evidence/mystery <<'EOF'
SYSTEM EVIDENCE

The filename was intentionally removed.

Some information has been recovered:
EOF

echo 'SFF7bGV2ZWw0X21pc3RlcnlfdW5sb2NrZWR9' | base64 -d >> /home/player/level4/evidence/mystery

cat >> /home/player/level4/evidence/mystery <<'EOF'

END OF EVIDENCE
EOF

chown -R player:player /home/player/level4

chmod 755 /home/player/level4
chmod 755 /home/player/level4/evidence
chmod 644 /home/player/level4/README.txt
chmod 644 /home/player/level4/evidence/*

echo "Level 4 created successfully."

