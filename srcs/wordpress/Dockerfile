# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/18 18:28:07 by tmatis            #+#    #+#              #
#    Updated: 2021/02/23 16:13:49 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2

RUN apk update && apk add openrc openssl nginx telegraf \
	php7 php7-fpm php7-curl php7-gd php7-intl \
	php7-mbstring php7-soap php7-xml php7-xmlrpc php7-zip php7-bz2 \
	php7-mysqli php7-json

WORKDIR "/home"

RUN adduser -D -g 'www' www
RUN mkdir /www


RUN wget https://wordpress.org/latest.tar.gz && tar -xzf latest.tar.gz && \
	rm -f latest.tar.gz && mv wordpress/* /www/
COPY ./wp-config.php /www/wp-config.php
RUN chown -R www:www /var/lib/nginx && chown -R www:www /www && \
	mkdir -p /run/nginx && chmod 777 -R /www

COPY ./default.conf /etc/nginx/nginx.conf
RUN mkdir /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf

COPY ./run.sh ./run.sh
COPY ./livenessprobe.sh ./livenessprobe.sh

EXPOSE 5050

CMD sh run.sh
