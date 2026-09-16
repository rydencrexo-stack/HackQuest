#!/bin/bash

# HackQuest Level 5
# The Final Vault

mkdir -p /home/player/level5/clues
mkdir -p /home/player/level5/archive
mkdir -p /home/player/level5/final

cat > /home/player/level5/README.txt <<'EOF'
========================================
           HACKQUEST - LEVEL 5
========================================

MISSION: THE FINAL VAULT

You've reached the final challenge.

The final key has been protected by
multiple clues.

Don't expect the answer to be sitting
in the obvious place.

Investigate the clues carefully.

Useful commands from previous levels
may help you.

Your objective:

Recover the FINAL FLAG.

========================================
EOF

cat > /home/player/level5/clues/clue1.txt <<'EOF'
CLUE 1

The vault isn't where you first look.

Search the entire level5 directory.

Look carefully at filenames.
EOF

cat > /home/player/level5/clues/clue2.txt <<'EOF'
CLUE 2

Some files may not be what their names
suggest.

You already learned how to investigate
file types.

Remember the command:

file
EOF

cat > /home/player/level5/clues/clue3.txt <<'EOF'
CLUE 3

The final evidence contains readable
information hidden among other data.

Remember what you learned in Level 4.

Try:

strings
EOF

cat > /home/player/level5/archive/backup.dat <<'EOF'
ARCHIVE BACKUP

Old system backup.

No final flag is stored here.

Keep investigating.
EOF

# Create decoy files
cat > /home/player/level5/final/readme.txt <<'EOF'
This is not the final flag.
Keep looking.
EOF

cat > /home/player/level5/final/data.txt <<'EOF'
Nothing useful here.
The vault requires further investigation.
EOF

# Create the final evidence without exposing
# the plaintext flag in the GitHub source
cat > /home/player/level5/final/vault <<'EOF'
========================================
HACKQUEST FINAL VAULT
========================================

SYSTEM STATUS: COMPROMISED

RECOVERED EVIDENCE:

EOF

echo 'SFF7aGFja3F1ZXN0X2NvbXBsZXRlZH0=' | base64 -d >> /home/player/level5/final/vault

cat >> /home/player/level5/final/vault <<'EOF'

========================================
END OF FINAL EVIDENCE
========================================
EOF

chown -R player:player /home/player/level5

chmod 755 /home/player/level5
chmod 755 /home/player/level5/clues
chmod 755 /home/player/level5/archive
chmod 755 /home/player/level5/final

chmod 644 /home/player/level5/README.txt
chmod 644 /home/player/level5/clues/*
chmod 644 /home/player/level5/archive/*
chmod 644 /home/player/level5/final/*

echo "Level 5 created successfully."
