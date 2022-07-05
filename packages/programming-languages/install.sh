brew install asdf
CMD="\n. $(brew --prefix asdf)/libexec/asdf.sh"
grep -i "$CMD" ${ZDOTDIR:-~}/.zshrc || echo $CMD >> ${ZDOTDIR:-~}/.zprofile

# Install nodejs plugin
NODE_VERSION=16
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest:$NODE_VERSION
asdf global nodejs latest:$NODE_VERSION

# TODO: install python, golang plugins and required config

