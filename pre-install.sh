# Check if oh-my-zsh is installed
OMZDIR="$HOME/.oh-my-zsh"
if [ ! -d "$OMZDIR" ]; then
        sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    else
	/bin/zsh -i -c "omz update"
fi

# Check if Powerlevel10k is installed
PL10KDIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
if [ ! -d "$PL10KDIR" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $PL10KDIR
fi
	

