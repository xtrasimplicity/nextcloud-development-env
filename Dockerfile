FROM nextcloud:18-apache
ARG DEV_USER_GID=33

RUN usermod --non-unique --uid $DEV_USER_GID www-data
