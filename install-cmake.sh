#!/bin/bash

# Update APT packages list
apt-get update -qq
apt-get install -qy dialog
apt-get install -qy apt-utils
apt-get install -qy software-properties-common
apt-get update -qq

# Update APT packages
apt-get upgrade -qq

# Install basic Linux programs
apt-get install -qy wget
apt-get install -qy curl
apt-get install -qy more less

# Install CMake
apt-get install -qy build-essential
apt-get install -qy cmake
