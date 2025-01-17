#!/bin/bash
# Termux Easy Setup Script

# Clear the terminal
clear

# Welcome Text 
printf "\e[1;31m ┌──────────────────────────┐ \e[0m\n" 
printf "\e[1;31m │ Termux Easy Setup Script │ \e[0m\n"
printf "\e[1;31m └──────────────────────────┘ \e[0m\n"
printf ""

# Setup the termux storage
termux-setup-storage

# Clear the terminal
clear

# Setup the .termux directory 
\cp files/termux.properties ~/.termux/

# Change the Termux welcome text
\cp files/motd ~/../usr/etc/

# Change the shell prompt style
\cp files/bash.bashrc ~/../usr/etc/

# Install 2048
\cp files/2048 ~/../usr/bin/
chmod +x ~/../usr/bin/2048

# Install Prompt.sh
\cp files/.prompt.sh ~/
chmod +x ~/.prompt.sh

# Ubuntu Starter
\cp files/ubuntu ~/../usr/bin/
chmod +x ~/../usr/bin/ubuntu

# Clear the terminal
clear

# Completion Message
printf "\e[1;31m ◆◆ Setup Complete ◆◆ \e[0m\n"
printf "\e[1;31m -------------------- \e[0m\n"
printf "\e[1;32m Restart Termux for changes to take effect. \e[0m\n"
printf "\n"
