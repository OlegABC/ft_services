# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/19 17:49:28 by tmatis            #+#    #+#              #
#    Updated: 2021/02/22 18:17:25 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

openrc
touch /run/openrc/softlevel
service telegraf start
grafana-server --homepath=/usr/share/grafana &> /dev/null
