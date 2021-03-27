#!/usr/bin/env bash

# Author : Mayur Chavhan
# Credit : Jeff Geerling


function _cmdfnd() {

  command -v "$1" >/dev/null 2>&1

}


if _cmdfnd docker; then

	echo -e "\n\t[X] ==> Docker already installed \n\n"

	exit;

elif _cmdfnd ansible; then

		echo -e "\n\t[X] ==> Great!! Ansible already installed"

		echo -e "\n\t[X] ==> Installing docker and docker-compose using ansible playbook \n"

		sudo ansible-playbook main.yml

else

		echo -e "\n\t[X] ==> ERROR!! Ansible is not installed"

fi

