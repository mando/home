#
# Your previous .profile  (if any) is saved as .profile.dpsaved
# Setting the path for DarwinPorts.
alias vi='vim'
export JRUBY_HOME=/opt/jruby
export JRUBY_PATH=$JRUBY_HOME/bin
export NORMAL_PATH=$HOME/Projects/flex_sdk_3/bin:$HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/opt/local/lib/postgresql82/bin:$PATH

export PATH=$NORMAL_PATH:$PATH

export INSTALL_PATH=$HOME/Projects/ihate/trunk/ihate
#export PATH=$JRUBY_HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH

function useJRuby() {
  export PATH=$JRUBY_PATH:$NORMAL_PATH
}

function useMRuby() {
  export PATH=$NORMAL_PATH:$JRUBY_PATH
}

if [ -f /usr/local/share/darcs_completion ]; then
  source /usr/local/share/darcs_completion
fi

set -o vi

export CVSROOT=:ext:localhost:/cvs
export CVS_RSH=ssh
export CVSEDITOR=/usr/bin/vi

#SSHAGENT=/opt/local/bin/ssh-agent
#SSHAGENTARGS="-s"
#if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
#    eval `$SSHAGENT $SSHAGENTARGS`
#trap "kill $SSH_AGENT_PID" 0
#fi

alias ls="ls -G"
export LSCOLORS=Axfxcxdxbxegedabagacad
source $HOME/.vsrc
export PERL5LIB=$PERL5lib:/opt/local/lib/perl5/site_perl/5.8.8:/opt/ocal/lib/perl5/site_perl/5.8.8/auto
