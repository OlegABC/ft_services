# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/22 11:48:17 by tmatis            #+#    #+#              #
#    Updated: 2021/02/22 16:48:16 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2

RUN apk update && apk add openrc telegraf influxdb
WORKDIR "/home"
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./run.sh ./run.sh
COPY ./livenessprobe.sh ./livenessprobe.sh
EXPOSE 8086
CMD sh run.sh
