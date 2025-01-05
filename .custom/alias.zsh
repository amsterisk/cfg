
# Disk Free 
alias dfh="df -Th| grep -Ev '(udev|tempfs|efi)'"

# Clear
alias c="clear"

# Refresh Shell
alias refresh="source $HOME/.zshrc"

# Add in microk8s commands if it's present
if microk8s_loc="$(type -p 'microk8s')" || [[ -z $microk8s_loc ]]; then
  alias kubectl="microk8s.kubectl"
  alias helm="microk8s.helm"
fi

# Add in the config alias for git
alias config='/usr/bin/git --git-dir=/home/andy/.cfg/ --work-tree=/home/andy'
