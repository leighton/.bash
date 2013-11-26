
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOST=`hostname -s`

umask 002

source $DIR/var.bash
source $DIR/fn.bash
source $DIR/prompt.bash #requires fn.bash
source $DIR/alias.bash

# Attempt to load a local configuration in ~/.bash/local/<host_name.bash>
if [ -f "$DIR/local/$HOST.bash" ]; then
  source "$DIR/local/$HOST.bash"
fi

