# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    livenessprobe.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/20 12:40:39 by tmatis            #+#    #+#              #
#    Updated: 2021/02/22 21:14:32 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

printf "TELEGRAPH STATUS: "
service telegraf status &> /dev/null
tel_ret=$?
if [ $tel_ret != 0 ]; then
	printf "[KO]\n";
	exit 1;
else
	printf "[OK]\n";
fi

printf "MARIADB STATUS: "
service mariadb status &> /dev/null
tel_ret=$?
if [ $tel_ret != 0 ]; then
	printf "[KO]\n";
	exit 1;
else
	printf "[OK]\n";
fi

exit 0;
