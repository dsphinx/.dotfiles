echo ""
echo "${blue}Install tmux config..."

ln -s $HOME/$ROOT_CONFIG/tmux/tmux.conf $HOME/.tmux.conf


if [ ! -d $HOME/.tmux ]
  then
    mkdir $HOME/.tmux
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
    $HOME/.tmux/plugins/tpm/bin/install_plugins
fi

echo "${green} ...done"

