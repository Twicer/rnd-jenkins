#!/usr/bin/env bash
set -euo pipefail

source /vagrant/scripts/console-colors.sh

clear
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "${BLUE_BG} 'Centos' provision ${NC}\n"
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "Following packages will be installed:\n"
printf -- "- homebrew\n"
printf -- "- htop\n"
printf -- "- midnight-commander\n"
printf -- "- gcc\n"
printf -- "- docker & docker-compose\n"
printf "${BLUE_BG}-----------------------------------------------${NC}\n"
printf "\n"

source /vagrant/scripts/install-centos-prerequisites.sh
source /vagrant/scripts/install-homebrew.sh
source /vagrant/scripts/install-common-tools.sh
source /vagrant/scripts/install-centos-docker.sh

printf "${GREEN_BG}[SUCCESS]${NC} 'Centos' provision completed."