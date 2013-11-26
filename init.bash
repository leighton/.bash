
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
HOST=`hostname -s`;

source $DIR/var.bash
source $DIR/fn.bash
source $DIR/prompt.bash

# Attempt to load a local configuration in ~/.bash/local/<host_name.bash>
if [ -f "$DIR/local/$HOST.bash" ]; then
  source "$DIR/local/$HOST.bash";
fi

