# !/bin/bash
GIT_REPOSITORY="git@github.com:com3-jp/istmpl.git"

echo "Setting up github..."
git remote add origin $GIT_REPOSITORY
git pull origin main
git branch -m main
git branch --set-upstream-to=origin/main main

echo "Pull from github..."
git pull origin main

echo "Done."
