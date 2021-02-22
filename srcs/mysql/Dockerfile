# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/22 11:48:17 by tmatis            #+#    #+#              #
#    Updated: 2021/02/22 22:38:48 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2

RUN apk update && apk add openrc telegraf mariadb mariadb-client
WORKDIR "/home"
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./run.sh ./run.sh
COPY ./livenessprobe.sh ./livenessprobe.sh
RUN mkdir /run/openrc && touch /run/openrc/softlevel
EXPOSE 3306
CMD sh run.sh
