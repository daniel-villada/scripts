#!bin/bash

#Actualizar el sistema
sudo apt update && sudo apt upgrade -y

#Instalar zsh
sudo apt install zsh -y

#Configurar zsh como shell predeterminada
chsh -s $(which zsh)

#Instalar NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh

# Cargar NVM automáticamente para zsh
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"' >> ~/.zshrc
source ~/.zshrc

# Instalar la última versión LTS de Node.js
nvm install --lts

# Establecer la última versión LTS de Node.js como la versión predeterminada
nvm use --lts

# Instalar Yarn
npm install -g yarn

# Instalar Git
sudo apt install git -y

# Instalar PHP 8.1
sudo apt install php8.1 --no-install-recommends 
sudo apt install php8.1-cli php8.1-common php8.1-mysql php8.1-zip php8.1-gd php8.1-mbstring php8.1-curl php8.1-xml php8.1-bcmath -y

#comprobando la version de php y los modulos
php -v && php -m

#Instalar composer
sudo curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#verificar la version de composer
composer --version

# Instalar Laravel Valet
composer global require laravel/valet
valet install