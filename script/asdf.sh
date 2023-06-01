#!/bin/zsh

echo "Install asdf"
echo ""
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3

echo " + asdf successfully installed"
echo ""

asdf plugin-add java
asdf plugin-add elixir 
asdf plugin-add python 
asdf plugin-add nodejs

asdf install python 3.11.3
asdf install java adoptopenjdk-19.0.2+7
asdf install nodejs 20.2.0
asdf install elixir 1.14.5