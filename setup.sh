#!/bin/bash
if ! type "zsh" > /dev/null;
then
    # install zsh
    echo "Install zsh"
    sudo apt-get install zsh
fi

# install oh-my-zsh
echo "Install oh-my-zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Change default shell to oh-my-zsh"
chsh -s /bin/zsh

echo "Overwrite my .zshrc"
cp .zshrc ~/.zshrc

echo "Install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
zsh -c "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

echo "Install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
zsh -c "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
