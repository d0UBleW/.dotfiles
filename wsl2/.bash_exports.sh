export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/opt/exercism-cli/

export JAVA_HOME=/nix/store/ch095in4hr481iqv11s55ks9ksl2c49i-openjdk-19.0.1+10/

export PATH=$PATH:$JAVA_HOME/bin

export XDG_CONFIG_HOME=$HOME/.config

export PATH=$PATH:$HOME/scripts:$HOME/bin

export EDITOR=/usr/bin/nvim

export DOTFILES="$HOME/.dotfiles"
export STOW_FOLDERS="tmux"

export AUTOENV_ENABLE_LEAVE=TRUE
export AUTOENV_ASSUME_YES=TRUE

export GOPATH=$HOME/projects/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin
export GO111MODULE=on
export WIN=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}')

# Wasmer
export WASMER_DIR="/home/doublew/.wasmer"

export NVM_DIR="$HOME/.config/nvm"

export PATH=$PATH:/home/doublew/.cabal/bin
export PATH=$PATH:/usr/games
export PATH=$PATH:/home/doublew/.local/share/nvim/mason/bin

# bind '"\eh":"\e[D"'
# bind '"\ej":"\e[B"'
# bind '"\ek":"\e[A"'
# bind '"\el":"\e[C"'

export CC=clang
export CXX=clang++

export PATH=$PATH:/home/doublew/.cargo/bin

export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH=/mnt/c/Users/William
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS=1
export PATH="$PATH:/mnt/c/Program Files/Oracle/VirtualBox"
# export PATH=$PATH:/mnt/c/Windows/System32/
# export PATH="$PATH:/mnt/c/ProgramData/Microsoft/Windows/Hyper-V/"
# export VAGRANT_DEFAULT_PROVIDER=hyperv
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export VAGRANT_DISABLE_VBOXSYMLINKCREATE=1
export VAGRANT_HOME=/mnt/e/vagrant.d
export VAGRANT_DOTFILE_PATH=/mnt/e/vagrant.d

export WINDOWS_HOME=/mnt/c/Users/William

# export NODE_OPTIONS=--openssl-legacy-provider

export GATEWAY_IP="$(awk '/nameserver/ {print $2}' /etc/resolv.conf)"

export VAULT_PASSWORD=password
export ANSIBLE_COW_SELECTION=random
export ANSIBLE_NOCOWS=1

export PATH=$PATH:/home/doublew/x-tools/bin
# export CONTAINER_HOST=unix:///mnt/wsl/podman-sockets/podman-machine-default/podman-user.sock
