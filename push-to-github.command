#!/bin/bash
# CarLink — one-click pusher for the /legal folder.
# Double-click this file in Finder. It opens Terminal automatically and walks
# you through pushing to GitHub. After this works once, future updates only
# need `git push` from inside this folder.

set -e
cd "$(dirname "$0")"   # always run from the folder this script lives in

clear
cat <<'BANNER'
╔════════════════════════════════════════════════╗
║  CarLink legal-folder → GitHub pusher          ║
╚════════════════════════════════════════════════╝

BANNER

# ── 1. Make sure the empty repo exists on GitHub ──────────────────────────
cat <<'STEP1'
STEP 1 of 3 — Create the empty repo on GitHub (if you haven't already).

   In a browser, open:   https://github.com/new
      • Owner:      your GitHub username  (or the CarLinkHQ org)
      • Repo name:  legal
      • Visibility: your call
      • DO NOT add a README, .gitignore, or license — keep it empty

STEP1
read -p "Press Return once the empty repo exists on github.com…" _

# ── 2. Owner + remote URL ──────────────────────────────────────────────────
echo
echo "STEP 2 of 3 — Tell me your GitHub username (the part after github.com/)."
read -p "GitHub username or org: " GH_USER
if [ -z "$GH_USER" ]; then
    echo "✗ Empty username — aborting."
    read -n 1 -s -p "Press any key to close…"; exit 1
fi
GH_REMOTE="https://github.com/${GH_USER}/legal.git"
echo "→ Will push to: $GH_REMOTE"
echo

# Set or replace the origin remote
if git remote get-url origin > /dev/null 2>&1; then
    git remote set-url origin "$GH_REMOTE"
else
    git remote add origin "$GH_REMOTE"
fi

# ── 3. Push ────────────────────────────────────────────────────────────────
cat <<'STEP3'

STEP 3 of 3 — Pushing now.

   When git asks:
      • Username: your GitHub username (the same one above)
      • Password: paste your GitHub personal-access token
        (the cursor won't move as you paste — that's normal)
      Then press Return.

STEP3
git branch -M main
git push -u origin main

cat <<DONE

╔════════════════════════════════════════════════╗
║  ✓ Done. Your legal docs are live at:          ║
║    https://github.com/${GH_USER}/legal
╚════════════════════════════════════════════════╝

DONE
read -n 1 -s -p "Press any key to close…"
