FROM nextcloud:18-apache
ARG DEV_USER_GID=33

RUN apt-get update && \
    apt-get install -y --no-install-recommends unzip && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/list/* && \
    curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php && \
    php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    usermod --non-unique --uid $DEV_USER_GID www-data
