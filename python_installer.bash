#!/bin/bash
echo "Verifing if there is python in your machine ..."
if ! command -v python3 &> /dev/null
then
    echo "There isn't python in your machine..."
    echo "Initializing installation..." 
    sudo add-apt-repository ppa:deadsnakes/ppa
    sudo apt-get install python3.8 
    exit
else 
   echo "There is $(python3 --version) "

fi
