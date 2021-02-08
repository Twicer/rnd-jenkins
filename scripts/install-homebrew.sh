#!/usr/bin/env bash

bash <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)

echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/vagrant/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
