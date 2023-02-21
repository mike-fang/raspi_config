#make new ssh key for github
ssh-keygen -t ed25519 -C 'mfang@spectacularlabs.com' -f ~/.ssh/id_ed25519 -N '' <<< y

# copy content
sudo apt install xclip
xclip -sel c < ~/.ssh/id_ed25519.pub

# swap caps escape
echo "setxkbmap -option caps:swapescape" >> ~/.bashrc
echo "alias vim=nvim" >> ~/.bashrc

source ~/.bashrc

# clone nvim config
cd ~/.config
git clone https://github.com/mike-fang/nvim

# install neovim
sudo apt install snapd
sudo snap install --beta nvim --classic

# install packer
cd ~
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

