#!/bin/bash


# Move aliases file to home directory
OUTPUTFILE='aliases'
cp "${OUTPUTFILE}" ~/.aliases

# Add to profile
if [ -f .bashrc ]; then
    echo "${OUTPUTFILE}" >> .bashrc
elif [ -f .bash_profile ]; then
    echo "${OUTPUTFILE}" >> .bash_profile
elif [ -f .profile ]; then
    echo "${OUTPUTFILE}" >> .profile
elif [ -f .zshrc ]; then
    echo "${OUTPUTFILE}" >> .zshrc
fi
