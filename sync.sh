#!/usr/bin/env bash
set -euo pipefail
git pull
rsync -e 'ssh -J root@192.168.192.51' -av --delete --exclude='.git' \
  ./ root@10.99.99.2:~/lab/my_ansible_project/
