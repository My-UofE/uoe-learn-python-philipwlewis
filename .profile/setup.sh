#!bash
for PROFILE in "/workspaces/*/.profile"; do

echo RUNNING SETUP for $REPO
if [ -f $PROFILE/bashrc ]; then
   echo SETTING UP BASHRC
   mv ~/.bashrc ~/.bashrc.bk
   mv ~/.bash_history ~/.bash_history.bk || echo no hist
   ln -s $PROFILE/bashrc ~/.bashrc || echo FAILED_LINK_BASHRC
   ln -s $PROFILE/bash_history ~/.bash_history || echo FAILED_LINK_BASH_HISTORY
fi

done
