# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/19 17:49:28 by tmatis            #+#    #+#              #
#    Updated: 2021/02/22 21:46:56 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

openrc
touch /run/openrc/softlevel
service influxdb start
service telegraf start
tail -f /dev/null
