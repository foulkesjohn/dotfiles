# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias be='bundle exec'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/John/.rvm/bin"
export ANDROID_HOME=/usr/local/opt/android-sdk

export RUBY_GC_HEAP_INIT_SLOTS=1000000                                          
export RUBY_HEAP_SLOTS_INCREMENT=1000000                                        
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1                                          
export RUBY_GC_MALLOC_LIMIT=100000000                                           
export RUBY_HEAP_FREE_MIN=500000

eval "$(docker-machine env dockerbox)"

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export PATH="$HOME/.yarn/bin:$PATH"
export EDITOR=vim
export PATH="/usr/local/sbin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH=/usr/local/anaconda3/bin:"$PATH"

ssh-add -K
