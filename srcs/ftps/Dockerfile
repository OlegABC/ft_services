# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/18 18:28:07 by tmatis            #+#    #+#              #
#    Updated: 2021/02/24 15:06:48 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13.2

RUN apk update && apk add openrc openssl openssh vsftpd telegraf 
WORKDIR "/home"

RUN adduser -D tmatis && echo "tmatis:password"| chpasswd && ssh-keygen -A;

RUN mkdir /etc/telegraf
COPY ./telegraf.conf /etc/telegraf/telegraf.conf
COPY ./run.sh ./run.sh
COPY ./vsftpd.crt /etc/vsftpd/vsftpd.crt 
COPY ./vsftpd.key /etc/vsftpd/vsftpd.key
COPY ./vsftpd.conf /etc/vsftpd/vsftpd.conf  
COPY ./livenessprobe.sh ./livenessprobe.sh
EXPOSE 20 21 30000 30001
CMD sh run.sh
