# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/22 11:48:17 by tmatis            #+#    #+#              #
#    Updated: 2021/02/23 16:41:32 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2

RUN apk update && apk add openrc telegraf mariadb mariadb-client
WORKDIR "/home"
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./run.sh ./run.sh
COPY ./livenessprobe.sh ./livenessprobe.sh
COPY ./mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY ./wordpress_site.sql ./wordpress_site.sql
RUN mkdir /run/openrc && touch /run/openrc/softlevel
EXPOSE 3306
CMD sh run.sh
