# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir ~/.vim
ln -sf ~/dotfiles/.vim/colors ~/.vim

# zsh
mkdir ~/.zsh
ln -sf ~/dotfiles/.zsh/themes ~/.zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zshrc_local ~/.zshrc_local

# irb
ln -sf ~/dotfiles/.irbrc ~/.irbrc
