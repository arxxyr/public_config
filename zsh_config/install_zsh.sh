# /usr/bin/bash
apt update
sudo apt install -y zsh git fontconfig unzip autojump
echo $SHELL
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
wget https://raw.githubusercontent.com/fablol/public_config/master/zsh_config/.zshrc
# wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip
# unzip Meslo.zip -d /usr/share/fonts/Meslo
# fc-cache -f -v
chsh -s $(which zsh)
# source ~/.zshrc
