# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/19 17:49:28 by tmatis            #+#    #+#              #
#    Updated: 2021/02/24 13:49:18 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

openrc
touch /run/openrc/softlevel
service telegraf start
service vsftpd start
tail -f /dev/null
