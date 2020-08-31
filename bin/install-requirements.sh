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
