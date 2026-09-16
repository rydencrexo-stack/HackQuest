# 🛡️ HackQuest

> **A 5-Level SSH-Based Cybersecurity Wargame**

Learn Linux and cybersecurity fundamentals through hands-on terminal challenges.

**Created by Atharva A. Deshmukh**

Creator and developer of **HackQuest**.

GitHub: https://github.com/rydencrexo-stack

## 🎯 About

HackQuest is an educational cybersecurity wargame inspired by
terminal-based security challenges.

Players connect through SSH and solve progressively challenging
Linux-based missions.

## 🧩 Levels

1. **The Hidden Key** — Hidden files
2. **The Search** — Recursive searching
3. **The Encoded Message** — Base64 decoding
4. **The Mystery File** — File identification and strings
5. **The Final Vault** — Multi-step investigation

## 🛠️ Built With

- Linux
- Bash
- Docker
- Docker Compose
- OpenSSH

## 🖥️ Screenshots

Explore the HackQuest terminal-based cybersecurity experience through these previews.

### 🔐 HackQuest Gameplay

![HackQuest Gameplay](level.jpeg)

### 🕵️ Level 1 — The Hidden Key

![HackQuest Level 1](level1.jpeg)

## 🚀 Installation & Setup

### 📋 Prerequisites

Make sure the following are installed on your system:

- Git
- Docker
- Docker Compose
- SSH Client

# Check Git:

```bash
git --version

Check Docker:

docker --version

Check Docker Compose:

docker-compose --version
```

# Check SSH:

ssh -V
1. Clone the Repository
git clone https://github.com/rydencrexo-stack/HackQuest.git

Enter the project directory:

cd HackQuest
2. Build HackQuest

Build the Docker image:

docker-compose build
3. Start HackQuest

Start the HackQuest container:

docker-compose up -d

Check the running container:

docker ps
4. Connect to HackQuest

Connect using SSH:

ssh player@localhost -p 2222

When prompted for the password, enter:

hackquest
5. Start Level 1

After connecting to HackQuest:

cd ~/level1

Read the mission:

cat README.txt

Investigate the files and solve the challenge.

6. Level 2

After completing Level 1:

cd ~/level2

Read the mission:

cat README.txt

Investigate the files and find the hidden key.

7. Level 3
cd ~/level3

Read the mission:

cat README.txt

Investigate message.txt and decode the encoded message.

8. Level 4
cd ~/level4/evidence

Investigate the files:

file *

Then use:

strings mystery

Recover the hidden key.

9. Level 5
cd ~/level5

Read the clues:

cat clues/clue1.txt
cat clues/clue2.txt
cat clues/clue3.txt

Then investigate the final evidence:

cd ~/level5/final
file *
strings vault

Recover the final flag.

# 🛑 Stop HackQuest

## To stop the HackQuest container:

- docker-compose down
- 🔄 Restart HackQuest

- Start the container again:

docker-compose up -d

## Reconnect:
```
- ssh player@localhost -p 2222

```
## 🗑️ Remove HackQuest

- To stop and remove the HackQuest container:

docker-compose down

- To remove the Docker image:

```
docker rmi hackquest-hackquest
```

## ⚠️ Disclaimer

HackQuest is designed for educational and authorized cybersecurity
practice only.

Do not use the techniques learned here against systems without
permission.

## 📄 Copyright

Copyright © 2026 **Atharva A. Deshmukh**

HackQuest was created and developed by Atharva A. Deshmukh.
=======
# HackQuest
A 5-level SSH-based cybersecurity wargame for learning Linux commands, file investigation, encoding, and basic security concepts.

