ssh-keygen -t ed25519 -C "bhargav2900@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_ed25519

echo #Copy the ssh key below into github->settings->SSH and GPG Keys->New SSH Key
cat ~/.ssh/id_ed25519.pub
