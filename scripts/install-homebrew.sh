#!/usr/bin/env bash

bash <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)

echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/vagrant/.profile
echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/vagrant/.bash_profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
