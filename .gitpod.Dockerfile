FROM gitpod/workspace-full:latest

# Install PHP 7.4 + required extensions
RUN sudo apt-get update && \
    sudo apt-get install -y php7.4 php7.4-cli php7.4-mbstring php7.4-xml php7.4-curl php7.4-zip unzip && \
    sudo update-alternatives --set php /usr/bin/php7.4 && \
    sudo update-alternatives --set phar /usr/bin/phar7.4 && \
    sudo update-alternatives --set phar.phar /usr/bin/phar.phar7.4 && \
    php -v