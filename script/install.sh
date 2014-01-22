#!/bin/sh


echo "Installing gitconfig..."
echo ""
cp gitconfig $HOME/.gitconfig
echo ""
echo " + gitconfig installed."

if test $(which rake)
then
  echo "Cloning Hub repo for your Git.."
  echo ""

  git clone git://github.com/github/hub.git
  cd hub

  echo "Running 'sudo rake install' to install Hub"
  sudo rake install
  
  cd ..
  rm -rf hub

  echo 'eval "$(hub alias -s)"' >> ~/.profile
fi

echo "Copying vimrc..."
echo ""

cp vimrc $HOME/.vimrc

echo " + vimrc copied."
echo ""

echo "Copying vim plugins..."
echo ""

if [ ! -d $HOME/.vim ]
then
  mkdir $HOME/.vim
fi

cp -r vim/* $HOME/.vim

echo " + vim plugins copied..."
echo ""

echo "Installing solarized theme for gnome terminal..."
echo ""

sh ./script/solarized.sh

echo " + Solarized installed"
echo ""

if test $(which ruby)
then
  echo "Cloning vim-ruby..."
  git clone git@github.com:vim-ruby/vim-ruby.git vim-ruby
  echo ""
  echo " + Vim-ruby repository was successfully cloned!"
  echo ""

  echo "Installing vim-ruby"
  ruby vim-ruby/bin/vim-ruby-install.rb
  echo ""
  if [ $? == 0 ]
  then
    echo " + Vim-ruby plugin was installed"
  else
    echo " x Vim-ruby plugin was not installed"
  fi
  echo ""
  rm -rf vim-ruby
  echo " + Vim ruby repository was removed"
  echo ""
fi

echo "Good Job! Your vimdotfiles are set now"
