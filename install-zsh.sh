
sudo apt -y update \
 && sudo apt -y upgrade \
 && sudo apt install -y unzip \
 && sudo apt install -y git \
 && sudo apt install -y zsh \
 && sudo apt-get install curl \

 sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

 sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh --no-check-certificate
 sudo chmod +x /usr/local/bin/oh-my-posh

 sudo mkdir ~/.poshthemes
 sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip --no-check-certificate
 sudo unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
 sudo chmod -R a+rwx ~/.poshthemes/*.json
 sudo rm ~/.poshthemes/themes.zip
 sudo echo 'eval "$(oh-my-posh init zsh --config ~/.poshthemes/craver.omp.json)"' >> ~/.zshrc

 sudo git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions
 sudo echo 'source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc

 sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/plugins/zsh-syntax-highlighting
 sudo echo 'source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc

 sudo chsh -s $(which zsh)

 cp -r /mnt/c/Users/$(cmd.exe /c echo %username%)/.ssh ~/