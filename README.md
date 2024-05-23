# dotfiles

Install good fonts where you run your terminal: https://github.com/tonsky/FiraCode

Installation steps for Ubuntu 22.04:
 # sudo apt install cmake gettext g++ unzip npm
 # install neovim:
   # git clone https://github.com/neovim/neovim.git
   # cd neovim
   # make CMAKE_BUILD_TYPE=RelWithDebInfo
   # sudo make install
   
 # sudo apt install zsh
 # install oh-my-zsh: sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
 # ln -s ~/.config/oh-my-zsh/zshrc ~/.zshrc
 # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
 # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
 #  git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

 # git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
 # ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
