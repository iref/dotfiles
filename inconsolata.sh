sudo echo "Installing inconsolata font..."

[ -d "~/.fonts" ] || mkdir "~/.fonts"

cd ~/.fonts/
wget http://kvz.io/blog/2009/05/25/install-the-best-coding-font/Inconsolata.ttf

sudo echo "Refreshing cache..."
sudo fc-cache -f -v
sudo echo "Done."
