# set the Java home directory
export JAVA_HOME=/usr/local/sdkman/candidates/java/current

# add Java bin directory to the PATH
export PATH=$JAVA_HOME/bin:$PATH

# set the library path for X11 libraries
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/workspaces/.codespaces/shared/editors/jetbrains/*/plugins/remote-dev-server/selfcontained/lib

# set the default editor to nano
export EDITOR=nano

# set the prompt
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
