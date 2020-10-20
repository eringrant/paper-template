#!/bin/bash

OS="`uname`"
case $OS in
  'Linux')
    alias install='sudo apt install'
    ;;
  'Darwin')
    alias install='brew'
    ;;
  *) 
    echo "Unrecognized OS."
    exit 1; 
    ;;
esac

install qpdf
echo "Follow the instructions at https://github.com/odeke-em/drive#installing and https://github.com/odeke-em/drive#initializing to set up the Google Drive interface."
