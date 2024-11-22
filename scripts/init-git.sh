# !/bin/bash
echo "Setting up git..."
git config --global user.email "isucon@example.com"
git config --global user.name "isucon"
git config --global init.defaultBranch main
git init

echo "Setting up ssh..."
echo -e "Host github.com\n  AddKeysToAgent yes\n  IdentityFile ~/.ssh/isucon\n  StrictHostKeyChecking=no\n" > ~/.ssh/config
ssh-keygen -t ed25519 -b 4096 -C "For ISUCON" -f ~/.ssh/isucon -N ""
cat ~/.ssh/isucon.pub

echo "Done."
