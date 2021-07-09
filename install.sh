# Installing git
sudo apt install git -y
git config --global user.email "gloffr@sunypoly.edu"
git config --global user.name "Ryan Gloff"

# Installing vim
sudo apt install vim -y

# Installing chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Installing Gnome-Tweaks
sudo apt install gnome-tweaks -y

# Removing icons
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

# Installing Dracula
wget https://github.com/dracula/gtk/archive/master.zip
unzip master.zip
rm master.zip
sudo mv gtk-master/ /usr/share/themes/Dracula
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

wget https://github.com/dracula/gtk/files/5214870/Dracula.zip
unzip Dracula.zip
rm Dracula.zip
sudo mv Dracula /usr/share/icons/
gsettings set org.gnome.desktop.interface icon-theme "Dracula"

wget https://raw.githubusercontent.com/dracula/wallpaper/master/ubuntu-1.png
sudo mv ubuntu-1.png /usr/share/backgrounds/
gsettings set org.gnome.desktop.background picture-uri /usr/share/backgrounds/ubuntu-1.png
gsettings set org.gnome.desktop.screensaver picture-uri /usr/share/backgrounds/ubuntu-1.png

# Installing starship terminal
sudo snap install starship -y
echo "" >> ~/.bashrc
echo "# Starting up starship terminal" >> ~/.bashrc
echo "eval \"\$(starship init bash)\"" >> ~/.bashrc

# Removing dock
sudo apt remove gnome-shell-extension-ubuntu-dock -y
killall -3 gnome-shell		# Reload gnome

# Installing arandr
sudo apt install arandr -y

# Installing VS Code
sudo snap install --classic code -y

# Installing jdk and maven
sudo apt install openjdk-11-jdk -y
sudo apt install maven -y

echo "# Java development environment variables" >> ~/.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
echo "export MAVEN_HOME=/usr/share/maven" >> ~/.bashrc

# Installing node and npm
sudo apt install npm -y

# Shortcut aliases
echo "" >> ~/.bashrc
echo "# Creating useful aliases" >> ~/.bashrc
echo "alias email=\"google-chrome https://mail.google.com/mail/u/1/#inbox\"" >> ~/.bashrc
echo "alias twitch=\"google-chrome https://twitch.com\"" >> ~/.bashrc
echo "alias youtube=\"google-chrome https://youtube.com/feed/subscriptions\"" >> ~/.bashrc

