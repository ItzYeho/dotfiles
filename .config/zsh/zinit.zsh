# Download zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# zinit settings
declare -A ZINIT
ZINIT[BIN_DIR]=$ZINIT_HOME
ZINIT[HOME_DIR]=$ZINIT_HOME
ZINIT[ZCOMPDUMP_PATH]=$ZSH_CACHE/zcompdump
ZPFX=$ZINIT_HOME/programs

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"
