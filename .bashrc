# ~/.bashrc

# Ensure the recycle bin directory exists on session login
sudo mkdir -p /recycle_bin
# Run the recycle bin script on session login
/workspaces/learning-linux-command-line-3005201/.recycle_bin_script.sh

# Enable colorful ls and grep output
export CLICOLOR=1
export LS_COLORS='di=34:fi=0:ln=35:pi=33:so=32:bd=46:cd=43:ex=31'

# Helpful aliases
alias ll='ls -alF'
alias la='ls -A'
alias ..='cd ..'
alias cls='clear'
# Alias for recycling files/directories
alias recycle='mv -t /recycle_bin'

# Enable color for grep
alias grep='grep --color=auto'

# Make prompt user-friendly
PS1='\[\e[32m\]\u@\h\[\e[m\]:\[\e[34m\]\w\[\e[m\]\$ '

# Replace REPO_NAME with your repo folder
export PATH="$HOME/bin:$REPO_ROOT/bin:$PATH"

echo "✅ .bashrc successfully loaded!"
