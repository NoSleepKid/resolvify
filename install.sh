#!/bin/bash

main(){
  sudo pacman -S python python-pip make
  pip install rich customtkinter 
  makepkg -si || {
    echo "Error has occurred in build process."
    exit
  }
  echo "Finished!, launch resolvify in youre terminal anytime to launch."
  exit
}

main
