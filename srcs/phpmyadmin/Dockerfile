# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/18 18:28:07 by tmatis            #+#    #+#              #
#    Updated: 2021/02/23 16:23:31 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2

RUN apk update && apk add openrc openssl nginx telegraf \
	php7 php7-fpm php7-curl php7-gd php7-intl \
	php7-mbstring php7-soap php7-xml php7-xmlrpc php7-zip php7-bz2 \
	php7-mysqli php7-json php7-session

WORKDIR "/home"

RUN adduser -D -g 'www' www
RUN mkdir /www


RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz \ 
	&& tar -xzf phpMyAdmin-5.0.4-english.tar.gz && rm -f phpMyAdmin-5.0.4-english.tar.gz \
	&& mv phpMyAdmin-5.0.4-english/* /www/
COPY ./config.inc.php /www/config.inc.php

RUN chown -R www:www /var/lib/nginx && chown -R www:www /www && \
	mkdir -p /run/nginx && chmod 777 -R /www
RUN chmod 755 /www/config.inc.php

COPY ./default.conf /etc/nginx/nginx.conf
RUN mkdir /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./run.sh ./run.sh
COPY ./livenessprobe.sh ./livenessprobe.sh

EXPOSE 5000

CMD sh run.sh
