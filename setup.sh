# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmatis <tmatis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/17 14:40:23 by tmatis            #+#    #+#              #
#    Updated: 2021/02/17 16:26:54 by tmatis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

printf "\033[0;34mHi, welcome to tmatis's ft_services 😇\n\n";

let	"e = 0";
printf "Verifing if docker is installed: ";

if [ -x "$(command -v docker)" ]; then
	printf "\033[0;32m[OK]\n"
else
	printf "\033[0;31m[KO]\n"
	printf "\033[0;36mInstalling docker..\n";
	printf "Downloading docker ...\n";
	wget -q --show-progress https://download.docker.com/linux/static/stable/x86_64/docker-20.10.3.tgz
	printf "Installing docker\n";
	tar -xzf docker-20.10.3.tgz
	rm -rf docker-20.10.3.tgz
	sudo cp docker/* /usr/bin/
	rm -rf ./docker/
	printf "\033[0;34mInit docker: "
	sudo dockerd &> /dev/null &
	printf "\033[0;32m[OK]\n\033[0m"
	sudo groupadd docker > /dev/null
	sudo usermod -aG docker ${USER}
	printf "Group added..\n";
fi
