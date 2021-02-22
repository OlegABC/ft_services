# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/22 11:48:17 by tmatis            #+#    #+#              #
#    Updated: 2021/02/22 18:50:40 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2

RUN apk update && apk add openrc telegraf grafana curl
WORKDIR "/home"
RUN mkdir -p /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./run.sh ./run.sh
COPY ./livenessprobe.sh ./livenessprobe.sh
COPY ./datasource.yaml /usr/share/grafana/conf/provisioning/datasources/datasource.yaml
COPY ./dashboard.yaml /usr/share/grafana/conf/provisioning/dashboards/dashboard.yaml
COPY ./dashboard.json /usr/share/grafana/conf/provisioning/dashboards/dashboard.json
EXPOSE 3000
CMD sh run.sh
