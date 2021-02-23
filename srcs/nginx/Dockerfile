# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/18 18:28:07 by tmatis            #+#    #+#              #
#    Updated: 2021/02/23 22:07:35 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2

RUN apk update && apk add openrc openssh openssl nginx telegraf
WORKDIR "/home"

RUN adduser -D -g 'www' www
RUN mkdir /www
COPY www /www
RUN chown -R www:www /var/lib/nginx && chown -R www:www /www && \
	mkdir -p /run/nginx

COPY ./nginx-selfsigned.key /etc/ssl/private/nginx-selfsigned.key
COPY ./nginx-selfsigned.crt /etc/ssl/certs/nginx-selfsigned.crt
COPY ./default.conf /etc/nginx/nginx.conf

RUN adduser -D tmatis && echo "tmatis:password"| chpasswd && ssh-keygen -A;

RUN mkdir /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./run.sh ./run.sh
COPY ./livenessprobe.sh ./livenessprobe.sh
EXPOSE 80 443 22
CMD sh run.sh
