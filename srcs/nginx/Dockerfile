# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/18 18:28:07 by tmatis            #+#    #+#              #
#    Updated: 2021/02/19 14:21:15 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2
RUN apk update && apk upgrade && apk add openrc openssh openssl nginx telegraf
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx && chown -R www:www /www && \
	mkdir -p /run/nginx;
EXPOSE 80
EXPOSE 443
