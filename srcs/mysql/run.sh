# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/19 17:49:28 by tmatis            #+#    #+#              #
#    Updated: 2021/02/22 22:25:37 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

openrc
service telegraf start
/etc/init.d/mariadb setup
service mariadb start
echo "CREATE DATABASE wordpress_site;" | mysql -u root && \
echo "CREATE USER 'wordpress'@'localhost' IDENTIFIED BY '1234';" | mysql -u root && \
echo "CREATE USER 'superuser'@'localhost' IDENTIFIED BY '1234';" | mysql -u root && \
echo "GRANT ALL PRIVILEGES ON *.* TO 'superuser'@'localhost';FLUSH PRIVILEGES;" | mysql -u root && \
echo "GRANT ALL PRIVILEGES ON wordpress_site.* TO 'wordpress'@'localhost';FLUSH PRIVILEGES;" | mysql -u root
tail -f /dev/null
