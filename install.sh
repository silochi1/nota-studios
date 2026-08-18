#!/bin/bash

: 'NOTA Studios Installer v0.1.0
=============================================
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀
⠀⡆⠒⢲⠀⠀⠀⠀⠀⢠⡀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⠿⠿⠿⠿⣿⣷⣦⡀⠀⠀⠀
⠀⡇⠀⡞⠀⠀⠀⠀⠀⠈⡟⠁⠀⠀⢀⣴⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣧⡀⠀
⠸⠃⠸⠟⠀⠀⠀⠀⢀⣤⡿⠀⠀⢀⣾⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣧⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⢸⣿⠃⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡇
⠀⠀⠀⠀⠀⠀⠀⠐⡒⠒⠀⠀⠀⣹⣏⣀⣴⣿⣿⡄⠀⠀⠀⠀⠀⣴⣶⣶⣄⣐⣼⣿
⠀⠀⠀⠀⠀⠀⠀⣠⣵⡀⠀⠀⠀⢽⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⠃
⠀⠀⠀⠀⠀⠀⠀⠛⠉⠀⠀⠀⠀⠨⣿⣟⣿⣿⣿⣿⡧⠀⠀⠀⢸⣿⣿⣿⣟⣿⡟⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠄⠀⠀⢳⣿⣿⣿⣿⣿⣿⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡆⠀⠀⠀⣿⣿⣿⣿⣿⣿⠁⠀⠀⣿⣿⣿⣿⣿⣿⠇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⡿⠟⠀⠀⠀⠈⠻⠿⣿⣿⠿⠀⠀⠀⢸⣿⣿⣿⣿⠯⠀⠀
⠀⠀⣀⠤⠤⠠⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣯⠀⠀⠀⠀⠀⠀⠈⠉⠁⠀⠀⠀⠀
⢠⠋⠀⠀⠀⠀⠀⠈⠳⡀⠀⠀⢀⣀⠀⠀⠀⠀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⡀⠀⠀⠀⠀⠀⠀⠀⡇⠀⢰⠉⠈⡆⠀⣀⡜⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠻⠤⣀⠀⠀⠀⠀⠀⢻⡀⠀⢑⡻⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠉⠓⠤⣀⡀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠹⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
=============================================
Source: https://emojicombos.com/music-ascii-art
'

# [0] Variables / Constants
FRONTEND_DIR="./frontend"
BACKEND_DIR="./backend"


# [1] Create .env.frontend file (if necessary) ...
echo "Creating .env.frontend file ..."

if [[ -e "${FRONTEND_DIR}/.env.frontend" ]]; then
    echo "(.env.frontend) file found! Skipping this step."
else
    if [[ -e "${FRONTEND_DIR}/.env.example" ]]; then
        echo "Creating (.env.frontend) from (.env.example) to (.env.fronted)..."
        cp -v "${FRONTEND_DIR}/.env.example" "${FRONTEND_DIR}/.env.frontend"
        echo "File created successfully!"
    else 
        echo "Error: (.env.example) file missing. Skipping this step"
    fi
fi



# [2] Create .env.backend file (if necessary) ...
echo "Creating .env.backend file ..."

if [[ -e "${BACKEND_DIR}/.env.backend" ]]; then
    echo "(.env.backend) file found! Skipping this step."
else
    if [[ -e "${BACKEND_DIR}/.env.example" ]]; then
        echo "Creating (.env.backend) from (.env.example) to (.env.backend)..."
        cp -v "${BACKEND_DIR}/.env.example" "${BACKEND_DIR}/.env.backend"
        echo "File created successfully!"
    else 
        echo "Error: (.env.example) file missing. Skipping this step"
    fi
fi


# [3] Build Docker container ...

