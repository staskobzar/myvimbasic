cd ~
git clone https://github.com/staskobzar/myvimbasic.git
ln -s ~/myvimbasic/vimrc ~/.vimrc
mkdir -p ~/.vim/syntax
wget --no-check-certificate -O ~/.vim/syntax/opensips.vim https://raw.githubusercontent.com/OpenSIPS/opensips/master/utils/vim/opensips.vim
if [ $? -gt 0 ] ; then
  cp ~/myvimbasic/opensips.vim ~/.vim/syntax/
fi

# status line
mkdir ~/.vim/plugin/
cp ~/myvimbasic/neatstatus.vim ~/.vim/plugin/
