#!bash

REPO=/workspaces/*/.profile || exit 1

echo RUNNING SETUP 

if [ -f /workspaces/UoE-Python/.profile/bashrc ]; then
   mv ~/.bashrc ~/.bashrc.bk
   mv ~/.bash_history ~/.bash_history.bk || echo no hist
   ln -s /workspaces/$REPO/.profile/bashrc ~/.bashrc || echo FAILED_LINK_BASHRC
   ln -s /workspaces/$REPO/.profile/bash_history ~/.bash_history || echo FAILED_LINK_BASH_HISTORY
fi