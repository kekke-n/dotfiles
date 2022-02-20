# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# create dotfiles link
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir ~/.vim
ln -sf ~/dotfiles/colors ~/.vim
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zshrc_local ~/.zshrc_local